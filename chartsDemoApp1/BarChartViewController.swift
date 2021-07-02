//
//  BarChartViewController.swift
//  chartsDemoApp1
//
//  Created by Somsak Kaeworasan on 2/7/2564 BE.
//

import UIKit
import Charts

class BarChartViewController: BaseViewController {
    
    @IBOutlet var chartView: BarChartView!
    
    var entries = [BarChartDataEntry]()
    var entries2 = [BarChartDataEntry]()

    override func viewDidLoad() {
        super.viewDidLoad()

        setView()
        setData()
    }
    
    func setView(){
        
    }
    
    func setData(){
        self.entries = yValsBarChartDataEntry()
        self.entries2 = yValsBarChartDataEntry()
        let dataSet = BarChartDataSet(entries: self.entries, label: "Bar chart unit test data")
        let dataSet2 = BarChartDataSet(entries: self.entries2, label: "Bar chart unit test dataSet2")
//        dataSet.colors = ChartColorTemplates.colorful()
//        dataSet.colors = ChartColorTemplates.joyful()
        dataSet.colors = ChartColorTemplates.material()
        dataSet2.colors = [
            NSUIColor(cgColor: UIColor.systemBlue.cgColor),
            NSUIColor(cgColor: UIColor.systemRed.cgColor),
            NSUIColor(cgColor: UIColor.systemPink.cgColor),
            NSUIColor(cgColor: UIColor.systemGray.cgColor),
            NSUIColor(cgColor: UIColor.systemGreen.cgColor),
            NSUIColor(cgColor: UIColor.systemYellow.cgColor)
        ]
        let data = BarChartData(dataSet: dataSet)
//        let data = BarChartData(dataSets: [dataSet, dataSet2])
        chartView.data = data
    }

}
