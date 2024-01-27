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
    
    func testCalculatorPerformanceMetricOptions() {
        let metrics: [XCTMetric] = [XCTMemoryMetric(), XCTStorageMetric(), XCTClockMetric()]
        
        let measureOptions = XCTMeasureOptions.default
        measureOptions.iterationCount = 3
        
        measure(metrics: metrics, options: measureOptions){
            NumberSelectTests().testSelectAllButtons()
        }
    }
    }
