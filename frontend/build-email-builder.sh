#!/bin/bash
# Build script to ensure email-builder is rebuilt with custom fonts

echo "Building email-builder with custom fonts..."
cd frontend/email-builder

# Clean previous build
rm -rf dist
rm -rf node_modules

# Install dependencies
yarn install

# Build the email-builder
yarn build

# Copy to final location
mkdir -p ../public/static/email-builder
cp -r dist/* ../public/static/email-builder/

echo "Email-builder built successfully with custom fonts!"
