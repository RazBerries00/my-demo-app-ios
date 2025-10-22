import XCTest

class ProductListingPageTest: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = true
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
    }

    func testProductListingPageAddItemToCart() {
        PageObject().selectItemByNumber(itemNumber: 1).tap()
        PageObject().addToCartButton.tap()
        PageObject().cartButton.tap()
        XCTAssert(PageObject().cartScreen.waitForExistence(timeout: 2))
        XCTAssert(app.staticTexts["1 Items"].exists)
    }
    
    func testProductListingPageAddMultipleItemsToCart() {
        PageObject().selectItemByNumber(itemNumber: 1).tap()
        PageObject().addToCartButton.tap()
        PageObject().catalogButton.tap()
        PageObject().selectItemByNumber(itemNumber: 2).tap()
        PageObject().addToCartButton.tap()
        PageObject().catalogButton.tap()
        PageObject().selectItemByNumber(itemNumber: 3).tap()
        PageObject().addToCartButton.tap()
        PageObject().cartButton.tap()
        XCTAssert(PageObject().cartScreen.waitForExistence(timeout: 2))
        XCTAssert(app.staticTexts["3 Items"].exists)
    }
}
