//
//  DateCalcTests.swift
//  DateCalcTests
//
//  Created by Mulkey, Rodrigo S. on 6/2/16.
//  Copyright © 2016 Mulkey, Rodrigo S. All rights reserved.
//

import XCTest
@testable import DateCalc

class DateCalcTests: XCTestCase {
    
    var mockStartDate : NSDate
    var mockEndDate : NSDate
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func setMockDates () {
        
        mockStartDate
        
    }
    
    func testDateCalculation () {
        
        let calendar = NSCalendar.currentCalendar()
        
        let adjustedStartDate = calendar.dateByAddingUnit(NSCalendarUnit.Day, value: -1, toDate: startDate, options: NSCalendarOptions.WrapComponents)
        
        let adjustedEndDate = calendar.dateByAddingUnit(NSCalendarUnit.Day, value: -1, toDate: endDate, options: NSCalendarOptions.WrapComponents)
        
        let components = calendar.components([.Day], fromDate: adjustedStartDate!, toDate: adjustedEndDate!, options: NSCalendarOptions.WrapComponents)
        
        print(components.day)
        
        resultLabel?.text = "\(components.day)"
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
