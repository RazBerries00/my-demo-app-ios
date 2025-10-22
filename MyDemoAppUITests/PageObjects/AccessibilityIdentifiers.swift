//  AccessibilityIdentifiers.swift
//  MyDemoAppUITests
//  Centralized accessibility identifiers for UI testing


         import Foundation

 /// Centralized accessibility identifiers organized by screen
enum AccessibilityIdentifiers {
    
    // Login Screen
    enum Login {
        static let loginBackToMyCartButton = "login-back-to-my-cart-button"
        static let loginTitle = "login-page-title"
        static let loginSubTitleSelectUsername = "login-select-a-username-subtitle"
        static let usernameTitle = "username-title"
        static let userNameTextField = "username-text-field"
        static let passwordTitle = "password-title"
        static let passwordTextField = "password-text-field"
        static let userNameExampleTitle = "username-example-title"
        static let passwordExampleTitle = "password-examples-title"
        static let bobUsernameExample = "bob-username-example"
        static let aliceUsernameExample = "alice-username-example"
        static let johnUsernameExample = "john-username-example"
        static let visualUsernameExample = "visual-username-example"
        static let defaultPassword = "default-password"
        static let faceLoginIcon = "face-login-icon"
        static let loginPageLoginButton = "login-page-login-button"
    }
}
