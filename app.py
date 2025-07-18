from flask import Flask, request, jsonify
from azure.storage.blob import BlobServiceClient
import os

app = Flask(__name__)

# Variables d’environnement à configurer dans la VM
AZURE_STORAGE_CONNECTION_STRING = os.getenv("AZURE_STORAGE_CONNECTION_STRING")
BLOB_CONTAINER_NAME = "staticfiles"

blob_service_client = BlobServiceClient.from_connection_string(AZURE_STORAGE_CONNECTION_STRING)
container_client = blob_service_client.get_container_client(BLOB_CONTAINER_NAME)

@app.route("/upload", methods=["POST"])
def upload_file():
    file = request.files['file']
    blob_client = container_client.get_blob_client(file.filename)
    blob_client.upload_blob(file, overwrite=True)
    return jsonify({"message": "Fichier uploadé avec succès !"})

@app.route("/download/<filename>", methods=["GET"])
def download_file(filename):
    blob_client = container_client.get_blob_client(filename)
    stream = blob_client.download_blob()
    return stream.readall(), 200, {'Content-Disposition': f'attachment; filename={filename}'}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
