//
//  BasePage.swift
//  MyDemoAppUITests
//
//  Base page with common methods for all pages
//

import XCTest

class BasePage {
    let app = XCUIApplication()

    // Common wait helper
    func waitForElement(_ element: XCUIElement, timeout: TimeInterval = TestConfig.defaultTimeout) -> Bool {
        return element.waitForExistence(timeout: timeout)
    }

    // Common tap with wait
    func tapElement(_ element: XCUIElement, timeout: TimeInterval = TestConfig.defaultTimeout) {
        _ = waitForElement(element, timeout: timeout)
        element.tap()
    }

    // TODO: Add other common page methods here
}
