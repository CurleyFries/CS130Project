//
//  projectUITests.swift
//  projectUITests
//
//  Created by user146389 on 11/15/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import XCTest

class projectUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAutoPass() {
    
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let arrowCountLabel = app.staticTexts["arrowCnt"]
        app.buttons["add1"].tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "1")
        let add3Button = app.buttons["add3"]
        add3Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "4")
        
        let add6Button = app.buttons["add6"]
        add6Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "10")
        
        let sub1Button = app.buttons["sub1"]
        sub1Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "9")
        
        let sub3Button = app.buttons["sub3"]
        sub3Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "6")
        add3Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "9")
        add6Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "15")
        
        let sub6Button = app.buttons["sub6"]
        sub6Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "9")
        sub3Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "6")
        sub1Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "5")
        sub6Button.tap()
        XCTAssertEqual(arrowCountLabel.value as! String,  "0")
        add6Button.tap()
        add6Button.tap()
        app/*@START_MENU_TOKEN@*/.buttons["rst"]/*[[".buttons[\"Reset Count\"]",".buttons[\"rst\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertEqual(arrowCountLabel.value as! String, "0")
        
    }

}
