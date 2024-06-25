//
//  SwiftUITodoUITests.swift
//  SwiftUITodoUITests
//
//  Created by May Shiralian on 6/22/24.
//  Copyright © 2024 Suyeol Jeon. All rights reserved.
//

import XCTest

final class SwiftUITodoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Create a new task named "Fred"
        let creatLabel = app.textFields["Create a New Task..."]
        creatLabel.tap()
        creatLabel.typeText("Fred")

        // Submit the new task
        app.keyboards.buttons["Return"].tap()
        sleep(1)
        
        // Tap the task named "Fred"
        app.buttons.matching(identifier: "Fred").element(boundBy: 0).tap()
        sleep(1)
        
        app.buttons["Edit"].tap()
        app.buttons.matching(identifier: "Fred").element(boundBy: 0).tap()
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        sleep(2)
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
