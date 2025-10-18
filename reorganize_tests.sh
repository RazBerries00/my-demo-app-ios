#!/bin/bash

# Base directory
BASE="/Users/kate/Documents/SauceLab/my-demo-app-ios/MyDemoAppUITests"

# Create missing folders
mkdir -p "$BASE/Tests/Functional/Product"
mkdir -p "$BASE/Tests/Functional/Navigation"
mkdir -p "$BASE/Tests/Regression"
mkdir -p "$BASE/Tests/Demo"

# Move files to correct locations
echo "Moving files..."

# Move MyDemoAppTestBase.swift to Base/
if [ -f "$BASE/utils/MyDemoAppTestBase.swift" ]; then
    mv "$BASE/utils/MyDemoAppTestBase.swift" "$BASE/Base/"
    echo "✓ Moved MyDemoAppTestBase.swift to Base/"
fi

# Move FailedTests.swift to Demo/
if [ -f "$BASE/Tests/FailedTests.swift" ]; then
    mv "$BASE/Tests/FailedTests.swift" "$BASE/Tests/Demo/"
    echo "✓ Moved FailedTests.swift to Tests/Demo/"
fi

# Move NavigationTest.swift to Functional/Navigation/
if [ -f "$BASE/Tests/NavigationTest.swift" ]; then
    mv "$BASE/Tests/NavigationTest.swift" "$BASE/Tests/Functional/Navigation/"
    echo "✓ Moved NavigationTest.swift to Tests/Functional/Navigation/"
fi

# Move ProductDetailsTest.swift to Functional/Product/
if [ -f "$BASE/Tests/ProductDetailsTest.swift" ]; then
    mv "$BASE/Tests/ProductDetailsTest.swift" "$BASE/Tests/Functional/Product/"
    echo "✓ Moved ProductDetailsTest.swift to Tests/Functional/Product/"
fi

# Move ProductListingPageTest.swift to Functional/Product/
if [ -f "$BASE/Tests/ProductListingPageTest.swift" ]; then
    mv "$BASE/Tests/ProductListingPageTest.swift" "$BASE/Tests/Functional/Product/"
    echo "✓ Moved ProductListingPageTest.swift to Tests/Functional/Product/"
fi

# Move LocalizationTest.swift to Regression/
if [ -f "$BASE/Tests/LocalizationTest.swift" ]; then
    mv "$BASE/Tests/LocalizationTest.swift" "$BASE/Tests/Regression/"
    echo "✓ Moved LocalizationTest.swift to Tests/Regression/"
fi

# Move RotationTest.swift to Regression/
if [ -f "$BASE/Tests/RotationTest.swift" ]; then
    mv "$BASE/Tests/RotationTest.swift" "$BASE/Tests/Regression/"
    echo "✓ Moved RotationTest.swift to Tests/Regression/"
fi

# Remove empty utils folder if it's empty
if [ -d "$BASE/utils" ] && [ -z "$(ls -A $BASE/utils)" ]; then
    rmdir "$BASE/utils"
    echo "✓ Removed empty utils/ folder"
fi

echo ""
echo "✅ Reorganization complete!"
echo ""
echo "Verifying final structure:"
echo "Files in Base/:"
ls -1 "$BASE/Base/"
echo ""
echo "Files in Tests/Functional/Product/:"
ls -1 "$BASE/Tests/Functional/Product/"
echo ""
echo "Files in Tests/Functional/Navigation/:"
ls -1 "$BASE/Tests/Functional/Navigation/"
echo ""
echo "Files in Tests/Regression/:"
ls -1 "$BASE/Tests/Regression/"
echo ""
echo "Files in Tests/Demo/:"
ls -1 "$BASE/Tests/Demo/"
