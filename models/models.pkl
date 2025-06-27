import pandas as pd
import numpy as np
import os
import joblib

from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier, IsolationForest
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import classification_report

from tensorflow.keras.models import Model
from tensorflow.keras.layers import Input, Dense
from tensorflow.keras import regularizers

# Ensure models/ directory exists
os.makedirs('models', exist_ok=True)

# Load Dataset
data = pd.read_csv('dataset/creditcard.csv')

# Feature & Target
X = data.drop('Class', axis=1)
y = data['Class']

# Scale Features
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)
joblib.dump(scaler, 'models/scaler.pkl')  # Save scaler

# Split Data
X_train, X_test, y_train, y_test = train_test_split(X_scaled, y, test_size=0.2, stratify=y, random_state=42)

# ------------------------ 1. Random Forest ------------------------
rf_model = RandomForestClassifier(n_estimators=100, random_state=42)
rf_model.fit(X_train, y_train)
joblib.dump(rf_model, 'models/rf_model.pkl')  # Save RF model

# ------------------------ 2. Isolation Forest ------------------------
iso_model = IsolationForest(n_estimators=100, contamination=0.01, random_state=42)
iso_model.fit(X_train)
joblib.dump(iso_model, 'models/iso_model.pkl')  # Save Isolation Forest

# ------------------------ 3. Autoencoder ------------------------
input_dim = X_train.shape[1]
encoding_dim = 14

input_layer = Input(shape=(input_dim,))
encoder = Dense(encoding_dim, activation="tanh", activity_regularizer=regularizers.l1(1e-5))(input_layer)
encoder = Dense(encoding_dim // 2, activation="relu")(encoder)
decoder = Dense(encoding_dim // 2, activation='tanh')(encoder)
decoder = Dense(input_dim, activation='relu')(decoder)

autoencoder = Model(inputs=input_layer, outputs=decoder)
autoencoder.compile(optimizer='adam', loss='mse')

autoencoder.fit(X_train, X_train,
                epochs=10,  # Keep low for testing, increase for final
                batch_size=256,
                shuffle=True,
                validation_data=(X_test, X_test),
                verbose=1)

autoencoder.save('models/autoencoder.h5')  # Save Autoencoder model

# ------------------------ 4. AE Threshold ------------------------
reconstructions = autoencoder.predict(X_train)
mse = np.mean(np.power(X_train - reconstructions, 2), axis=1)
threshold = np.percentile(mse, 99)  # Top 1% as fraud threshold

joblib.dump(threshold, 'models/ae_threshold.pkl')  # Save threshold
