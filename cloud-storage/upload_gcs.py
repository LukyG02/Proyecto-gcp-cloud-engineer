from google.cloud import storage
import argparse

def upload_blob(bucket_name, source_file_name, destination_blob_name):
    storage_client = storage.Client()
    bucket = storage_client.bucket(bucket_name)
    blob = bucket.blob(destination_blob_name)

    blob.upload_from_filename(source_file_name)
    print(f"Archivo {source_file_name} subido a {destination_blob_name}.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Crear Snapshot de un disco")
    parser.add_argument("bucket_name", help="Nombre del bucket")
    parser.add_argument("source_file_name", help="Nombre del archivo a subir")
    parser.add_argument("destination_blob_name", help="Nombre del archivo en el bucket")

    args = parser.parse_args()

    upload_blob(args.bucket_name, args.source_file_name, args.destination_blob_name)

