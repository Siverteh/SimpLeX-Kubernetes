#!/bin/bash

# Define the list of YAML files
yaml_files=(
  "simplex-backend-deployment.yaml"
  "simplex-backend-service.yaml"
  "simplex-compiler-deployment.yaml"
  "simplex-compiler-service.yaml"
  "simplex-database-deployment.yaml"
  "simplex-database-service.yaml"
  "simplex-database-secret.yaml"
  "simplex-database-init.yaml"
  "simplex-database-pvc.yaml"
  "simplex-frontend-deployment.yaml"
  "simplex-frontend-service.yaml"
)

# Loop through each file and apply it
for file in "${yaml_files[@]}"; do
  if [ -f "$file" ]; then
    echo "Applying $file..."
    kubectl apply -f "$file"
  else
    echo "File $file does not exist, skipping..."
  fi
done

echo "Deployment process completed."
