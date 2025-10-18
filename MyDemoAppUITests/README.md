# MyDemoApp UI Tests

This test suite provides comprehensive UI testing coverage for the My Demo App iOS application.

## 📁 Project Structure

```
MyDemoAppUITests/
├── Base/
│   ├── MyDemoAppTestBase.swift    # Base test class (existing)
│   └── TestConfig.swift            # Test configuration and constants
│
├── PageObjects/
│   ├── BasePage.swift              # Base page with common methods
│   ├── PageObject.swift            # Original page object (existing)
│   ├── LoginPage.swift             # Login screen
│   ├── CatalogPage.swift           # Product catalog
│   ├── ProductDetailsPage.swift   # Product details
│   ├── CartPage.swift              # Shopping cart
│   ├── CheckoutPage.swift          # Checkout flow
│   └── MenuPage.swift              # More menu
│
├── Tests/
│   ├── Sanity/                     # Quick smoke tests
│   │   └── SanityTests.swift
│   │
│   ├── Critical/                   # Critical user journeys
│   │   ├── LoginTests.swift
│   │   ├── CheckoutFlowTests.swift
│   │   └── EndToEndTests.swift
│   │
│   ├── Functional/                 # Feature-specific tests
│   │   ├── Navigation/
│   │   │   └── NavigationTest.swift (existing)
│   │   ├── Product/
│   │   │   ├── ProductDetailsTest.swift (existing)
│   │   │   └── ProductListingPageTest.swift (existing)
│   │   ├── Cart/
│   │   │   └── CartTests.swift
│   │   └── Menu/
│   │       └── MenuTests.swift
│   │
│   ├── Regression/                 # Full regression suite
│   │   ├── LocalizationTest.swift (existing)
│   │   └── RotationTest.swift (existing)
│   │
│   └── Demo/                       # Demo tests
│       └── FailedTests.swift (existing)
│
└── Utilities/
    ├── TestHelpers.swift           # Helper methods
    ├── WaitHelpers.swift           # Custom wait functions
    └── TestData.swift              # Test data constants
```

## 🎯 Test Categories

### Sanity Tests
**Purpose:** Quick smoke tests to verify critical functionality
**Run time:** < 2 minutes
**When to run:** Before every commit, first step in CI/CD

### Critical Tests
**Purpose:** Essential user journeys that must always work
**Run time:** 5-10 minutes
**When to run:** Multiple times daily, before releases

### Functional Tests
**Purpose:** Detailed feature testing organized by feature area
**Run time:** 20-30 minutes
**When to run:** Full regression testing, nightly builds

### Regression Tests
**Purpose:** Non-critical tests (localization, rotation, edge cases)
**Run time:** 10-15 minutes
**When to run:** Weekly or before major releases

## 🚀 Getting Started

### Prerequisites
- Xcode 14.0+
- iOS Simulator or physical device
- My Demo App installed

### Running Tests

**Run all tests:**
```bash
xcodebuild test -workspace "My Demo App.xcworkspace" -scheme "My Demo App" -destination 'platform=iOS Simulator,name=iPhone 15'
```

**Run specific test suite:**
```bash
# Sanity tests only
xcodebuild test -only-testing:MyDemoAppUITests/SanityTests

# Critical tests only
xcodebuild test -only-testing:MyDemoAppUITests/LoginTests
xcodebuild test -only-testing:MyDemoAppUITests/CheckoutFlowTests
```

**Run in Xcode:**
1. Open `My Demo App.xcworkspace`
2. Select a test file
3. Click the diamond icon next to the test method
4. Or press `Cmd + U` to run all tests

## 📝 Writing Tests

### Page Object Pattern
Each screen has its own Page Object class with:
- **Elements:** Lazy properties for UI elements
- **Actions:** Methods that perform actions on the page

Example:
```swift
class LoginPage: BasePage {
    lazy var usernameField = app.textFields["username"]
    lazy var loginButton = app.buttons["login"]

    func login(username: String, password: String) {
        usernameField.tap()
        usernameField.typeText(username)
        // ...
    }
}
```

### Test Structure
All tests inherit from `MyDemoAppTestBase` which provides:
- App launch in `setUp()`
- App termination in `tearDown()`
- Helper methods for common actions

Example:
```swift
class LoginTests: MyDemoAppTestBase {
    func testLoginSuccess() {
        // Arrange
        let loginPage = LoginPage()

        // Act
        loginPage.login(username: "test", password: "test123")

        // Assert
        XCTAssert(app.staticTexts["Welcome"].exists)
    }
}
```

## 🛠 Maintenance

### Adding New Tests
1. Identify which category (Sanity/Critical/Functional/Regression)
2. Create test in appropriate folder
3. Use existing Page Objects or create new ones
4. Follow naming convention: `test[Feature][Action]()`

### Updating Page Objects
When UI changes:
1. Update the accessibility identifier in the app
2. Update the corresponding Page Object class
3. Tests using that Page Object automatically use the updated identifier

## 📊 Test Metrics

### Current Coverage
- **Navigation Tests:** 8 tests
- **Product Tests:** 11 tests
- **Localization Tests:** 1 test
- **Rotation Tests:** 1 test

### TODO: Expand Coverage
- [ ] Login/Authentication tests
- [ ] Checkout flow tests
- [ ] Cart management tests
- [ ] Menu feature tests
- [ ] Sanity test suite
- [ ] Error handling tests

## 👥 Contributing

When adding new tests:
1. Follow the existing structure
2. Use Page Object pattern
3. Add clear test descriptions
4. Include comments for complex logic
5. Update this README if adding new categories

## 📚 Resources

- [XCUITest Documentation](https://developer.apple.com/documentation/xctest)
- [My Demo App GitHub](https://github.com/saucelabs/my-demo-app-ios)
- [Page Object Pattern](https://martinfowler.com/bliki/PageObject.html)
