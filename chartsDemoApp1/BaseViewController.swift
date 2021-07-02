//
//  BaseViewController.swift
//  chartsDemoApp1
//
//  Created by Somsak Kaeworasan on 1/7/2564 BE.
//

import UIKit
import Charts

class BaseViewController: UIViewController, ChartViewDelegate {
    
    var yVals = [ChartDataEntry]()
    let range = 30.0
    
    func yValsChartDataEntry() -> [ChartDataEntry]{
        for i in 0..<20 {
            let mult: Double = range / 2.0
            let val = Double(arc4random_uniform(UInt32(mult))) + 50
            yVals.append(ChartDataEntry(x: Double(i), y: val))
        }
        //(x: 0.0, y: 10.0)
        //(x: 1.0, y: 5.0)
        //(x: 2.0, y: 7.0)
        //(x: 3.0, y: 5.0)
        return yVals
    }
    
}
