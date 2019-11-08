//
//  CalculatorUITests2.swift
//  CalculatorUITests2
//
//  Created by Admin on 27/06/2019.
//  Copyright © 2019 fq.nz. All rights reserved.
//

import XCTest

class CalculatorUITests2: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let app = XCUIApplication()
        
        
        let button = app.buttons["1"]
        button.tap()
        app.buttons["+"].tap()
        button.tap()
        app.buttons["="].tap()
        
        let textField = app.otherElements.containing(.button, identifier:"AC").children(matching: .textField).element
        
        XCTAssertEqual(textField.value as! String, "2.0")
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
