#!/bin/bash
# To make the bash script executable, use the
# `chmod +x scripts/build.sh` command


# Clean the target/ directory from previous artifacts
# <Insert the relevant mvn command here>

# Run Unit Tests
echo "Running Tests"
# <Insert the relevant mvn command here>

# Obtain exit code to check if the tests have passed
EXIT_CODE=$?

if [ "$EXIT_CODE" -ne 0 ]; then
  echo "Tests failed. Exiting..."
  exit 1
fi

echo "Tests passed. Continuing to package the application"

# Build and 'package' the application while skipping tests
# <Insert the relevant mvn command here>

# Obtain exit code to check if the build succeeded
EXIT_CODE=$?

if [ "$EXIT_CODE" -ne 0 ]; then
  echo "Build failed. Exiting..."
  exit 1
fi

echo "The application was built and packaged successfully."
