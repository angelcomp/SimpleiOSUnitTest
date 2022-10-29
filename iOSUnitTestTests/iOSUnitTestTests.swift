//
//  iOSUnitTestTests.swift
//  iOSUnitTestTests
//
//  Created by Angelica dos Santos on 29/10/22.
//

import XCTest
@testable import iOSUnitTest

final class iOSUnitTestTests: XCTestCase {
    
    var sut: Arithmetic!

    override func setUpWithError() throws {
        sut = Arithmetic()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_AddOperation_right() {
        //Given
        let num1 = 2
        let num2 = 5
        
        //When
        let result = sut.add(num1, num2)
        
        //Then
        XCTAssertEqual(result, 7)
    }
    
    func test_AddOperation_wrong() {
        //Given
        let num1 = 2
        let num2 = 5
        
        //When
        let result = sut.add(num1, num2)
        
        //Then
        XCTAssertNotEqual(result, 25)
    }
    
    func test_SubOperation_right() {
        //Given
        let num1 = 2
        let num2 = 5
        
        //When
        let result = sut.sub(num1, num2)
        
        //Then
        XCTAssertEqual(result, -3)
    }
    
    func test_SubOperation_wrong() {
        //Given
        let num1 = 2
        let num2 = 5
        
        //When
        let result = sut.sub(num1, num2)
        
        //Then
        XCTAssertNotEqual(result, 3)
    }
    
    func test_MulOperation_right() {
        //Given
        let num1 = 2
        let num2 = 5
        
        //When
        let result = sut.mul(num1, num2)
        
        //Then
        XCTAssertEqual(result, 10)
    }
    
    func test_MulOperation_wrong() {
        //Given
        let num1 = 2
        let num2 = 5
        
        //When
        let result = sut.mul(num1, num2)
        
        //Then
        XCTAssertNotEqual(result, 11)
    }
    
    func test_DivOperation_right() {
        //Given
        let num1 = 6
        let num2 = 2
        
        //When
        let result = sut.div(num1, num2)
        
        //Then
        XCTAssertEqual(result, 3)
    }
    
    func test_DivOperation_wrong() {
        //Given
        let num1 = 6
        let num2 = 2
        
        //When
        let result = sut.div(num1, num2)
        
        //Then
        XCTAssertNotEqual(result, 2)
    }
}
