//
//  BaseViewController.swift
//  chartsDemoApp1
//
//  Created by Somsak Kaeworasan on 1/7/2564 BE.
//

import UIKit
import Charts

class BaseViewController: UIViewController, ChartViewDelegate {
    
    var yValsChartData = [ChartDataEntry]()
    var yValsBarChartData = [BarChartDataEntry]()
    let range = 30.0
    
    // return [ChartDataEntry]
    func yValsChartDataEntry() -> [ChartDataEntry]{
        for i in 0..<20 {
            let mult: Double = range / 2.0
            let val = Double(arc4random_uniform(UInt32(mult))) + 50
            yValsChartData.append(ChartDataEntry(x: Double(i), y: val))
        }
//        yValsChartData = [
//        (x: 0.0, y: 10.0)
//        (x: 1.0, y: 5.0)
//        (x: 2.0, y: 7.0)
//        (x: 3.0, y: 5.0)
//        ]
        return yValsChartData
    }
    
    // return [BarChartDataEntry]
    func yValsBarChartDataEntry() -> [BarChartDataEntry]{
        for i in 0..<20 {
            let mult: Double = range / 2.0
            let val = Double(arc4random_uniform(UInt32(mult))) + 50
            yValsBarChartData.append(BarChartDataEntry(x: Double(i), y: val))
        }
//        yValsBarChartData = [
//        (x: 0.0, y: 10.0)
//        (x: 1.0, y: 5.0)
//        (x: 2.0, y: 7.0)
//        (x: 3.0, y: 5.0)
//        ]
        return yValsBarChartData
    }
}
