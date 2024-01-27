import XCTest

class PerformanceUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
            continueAfterFailure = false
            XCUIApplication().launch()
        }
        
        override func tearDown() {
        //
        }
        
        func testGeneralCalculatorPerformance() {
            measure {
                NumberSelectTests().testSelectAllButtons()
            }
        }
    }
