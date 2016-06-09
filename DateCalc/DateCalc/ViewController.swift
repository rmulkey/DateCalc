//
//  ViewController.swift
//  DateCalc
//
//  Created by Mulkey, Rodrigo S. on 6/2/16.
//  Copyright © 2016 Mulkey, Rodrigo S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startDatePicker: UIDatePicker!
    @IBOutlet weak var endDatePicker: UIDatePicker!
    @IBOutlet weak var resultLabel: UILabel!
    
    var startDate = NSDate()
    var endDate = NSDate()

    let timeInterval = NSDate().timeIntervalSince1970

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateButtonTapped () {

        daysBetweenDates(startDatePicker.date, endDate: endDatePicker.date)
    
    }
    
    func daysBetweenDates(startDate: NSDate, endDate: NSDate) {
        
        let calendar = NSCalendar.currentCalendar()
        
//        let adjustedStartDate = calendar.dateByAddingUnit(NSCalendarUnit.Day, value: 1, toDate: startDate, options: NSCalendarOptions.WrapComponents)
//        
//        print("Adjusted Start Date: " + "\(adjustedStartDate)")
//        
//        let adjustedEndDate = calendar.dateByAddingUnit(NSCalendarUnit.Day, value: 0, toDate: endDate, options: NSCalendarOptions.WrapComponents)
//        
//        print("Adjusted End Date: " + "\(adjustedEndDate)")
//        
//        let components = calendar.components([.Day], fromDate: adjustedStartDate!, toDate: adjustedEndDate!, options: [])
//        
//        print(components.day)
        
        let adjustedStartDate = calendar.dateByAddingUnit(NSCalendarUnit.Day, value: 1, toDate: startDate, options: [])
        
        print("Adjusted Start Date: " + "\(adjustedStartDate)")
        
        let adjustedEndDate = calendar.dateByAddingUnit(NSCalendarUnit.Day, value: 0, toDate: endDate, options: [])
        
        print("Adjusted End Date: " + "\(adjustedEndDate)")
        
        let components = calendar.components([.Day], fromDate: adjustedStartDate!, toDate: adjustedEndDate!, options: [])
        
        print(components.day)
        
        let totalDays = abs(components.day)
        
        resultLabel?.text = "\(totalDays)"
        
    }
    
    @IBAction func startDatePickerAction(sender: AnyObject) {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let strDate = dateFormatter.stringFromDate(startDatePicker.date)
        
        print("Start Date = " + strDate)
        
    }
    
    @IBAction func endDatePickerAction(sender: AnyObject) {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let strDate = dateFormatter.stringFromDate(endDatePicker.date)
        
        print("End Date = " + strDate)
        
    }
    


}

