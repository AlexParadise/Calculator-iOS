import XCTest

public class CalculatorPage: BaseTest {
    //Make sure the button is on the page before we run the test
    override var rootElement: XCUIElement {
        return app.staticTexts["1"]
    }
    
    //Page Elements
    lazy var oneButton = app.staticTexts["1"]
    lazy var twoButton = app.staticTexts["2"]
    lazy var threeButton = app.staticTexts["3"]
    lazy var fourButton = app.staticTexts["4"]
    lazy var fiveButton = app.staticTexts["5"]
    
    @discardableResult
    func tapOneByAI(completion: Completion = nil) -> Self {
        log("tap the One Button by using the accesibility Identifier")
        app.buttons["TEST"].tap()
        return self
    }
    
    
    @discardableResult
    func tapOne(completion: Completion = nil) -> Self {
        log("tap the One Button")
        oneButton.tap()
        return self
    }
}
