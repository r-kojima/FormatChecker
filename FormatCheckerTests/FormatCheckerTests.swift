//
//  FormatCheckerTests.swift
//  FormatCheckerTests
//
//  Created by 小嶌諒 on 2020/08/27.
//  Copyright © 2020 r-kojima. All rights reserved.
//

import XCTest
@testable import FormatChecker

class FormatCheckerTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }

    func testIsNumber() throws {
        XCTContext.runActivity(named: "文字のみ") { _ in
            XCTAssertFalse("abc".isNumber())
        }
        
        XCTContext.runActivity(named: "整数のみ") { _ in
            XCTAssertTrue("0123".isNumber())
        }
        
        XCTContext.runActivity(named: "文字と数字混在") { _ in
            XCTAssertFalse("123abc".isNumber())
        }
        
        XCTContext.runActivity(named: "空文字") { _ in
            XCTAssertFalse("".isNumber())
        }
    }
}
