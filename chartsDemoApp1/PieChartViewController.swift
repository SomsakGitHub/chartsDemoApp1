//
//  PieChartViewController.swift
//  chartsDemoApp1
//
//  Created by Somsak Kaeworasan on 2/7/2564 BE.
//

import UIKit
import Charts

class PieChartViewController: BaseViewController {
    
    @IBOutlet var chartView: PieChartView!
    
    var entries = [ChartDataEntry]()

    override func viewDidLoad() {
        super.viewDidLoad()

        setView()
        setData()
    }
    
    func setView(){
        
    }
    
    func setData(){
        self.entries = yValsChartDataEntry()
        let dataSet = PieChartDataSet(entries: self.entries, label: "Bar chart unit test data")
        dataSet.colors = ChartColorTemplates.pastel()
        let data = PieChartData(dataSet: dataSet)
        chartView.data = data
    }
}
