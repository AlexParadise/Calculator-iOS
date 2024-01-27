import XCTest

class Logger {
    func log( mlog: String ){
        NSLog(mlog)
    }
}

public class BaseTest{
    typealias Completion = (() -> Void)?
    let app = XCUIApplication()
    let log = Logger().log
    required init(timeout: TimeInterval = 10, completion: Completion = nil) {
        log("waiting \(timeout)s for \(String(describing: self)) existence")
        XCTAssert(rootElement.waitForExistence(timeout: timeout),
                  "Page \(String(describing: self)) waited, but not loaded")
        completion?()
    }
    
    var rootElement: XCUIElement {
        fatalError("subclass should override rootElement")
    }
    
    //Button
    func button( name: String) -> XCUIElement {
        return app.buttons[name]
    }
    
    //Navigation Bar
    func navBar ( name: String) -> XCUIElement {
        return app.navigationBars[name]
    }
    
    //SecureField
    func secureField( name: String) -> XCUIElement {
        return app.secureTextFields[name]
    }
    
    //TextField
    func textField( name: String) -> XCUIElement {
        return app.textFields[name]
    }
    
    //TextView
    func textView( name: String) -> XCUIElement {
        return app.staticTexts[name]
    }
}
