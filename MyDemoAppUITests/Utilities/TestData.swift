//
//  TestData.swift
//  MyDemoAppUITests
//
//  Test data constants
//

import Foundation

struct UserTestData {

    // All preset users available in the app (password is always "10203040")
    static let validUsers: [(username: String, password: String)] = [
        ("bob@example.com", "10203040"),
        ("alice@example.com", "10203040"),
        ("john@example.com", "10203040"),
        ("visual@example.com", "10203040")
    ]

    // Common password for all preset users
    static let defaultPassword = "10203040"

    // Invalid credentials for negative testing
    static let invalidCredentials = [
        (username: "", password: ""),                           // Empty fields
        (username: "invalid@example.com", password: ""),        // Empty password
        (username: "", password: "10203040"),                   // Empty username
        (username: "test@test.com", password: "wrongpassword")  // Invalid combo
    ]

    
}
