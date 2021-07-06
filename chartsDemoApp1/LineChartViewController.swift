//
//  LineChartViewController.swift
//  chartsDemoApp1
//
//  Created by Somsak Kaeworasan on 1/7/2564 BE.
//

import UIKit
import Charts

class LineChartViewController: BaseViewController {
    
    @IBOutlet weak var lineChartView: LineChartView!
    var entries = [ChartDataEntry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setView()
        setData()
    }
    
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print("entry", entry)
    }
    
    func setView(){
//        self.lineChartView.rightAxis.enabled = false
//        self.lineChartView.xAxis.labelPosition = .bottom
//        self.lineChartView.xAxis.labelFont = .boldSystemFont(ofSize: 12)
//        self.lineChartView.xAxis.setLabelCount(6, force: true)
//        self.lineChartView.xAxis.labelTextColor = #colorLiteral(red: 0.215686274509804, green: 0.709803921568627, blue: 0.898039215686275, alpha: 1.0)
//        self.lineChartView.xAxis.axisLineColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
//        self.lineChartView.animate(xAxisDuration: 2.5)
        
//        let leftAxis = lineChartView.leftAxis
//        leftAxis.labelFont = .boldSystemFont(ofSize: 12)
//        leftAxis.setLabelCount(6, force: true)
//        leftAxis.labelTextColor = #colorLiteral(red: 0.215686274509804, green: 0.709803921568627, blue: 0.898039215686275, alpha: 1.0)
//        leftAxis.axisLineColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
//        leftAxis.labelPosition = .insideChart
//        leftAxis.labelPosition = .outsideChart
    }
    
    func setData(){
        self.entries = yValsChartDataEntry()
        let lineDataSet = LineChartDataSet(entries: self.entries, label: "Line chart unit test data")
//        lineDataSet.drawCirclesEnabled = false
//        lineDataSet.mode = .cubicBezier
//        lineDataSet.lineWidth = 31
//        lineDataSet.setColor(.orange)
//        lineDataSet.fill = Fill(color: .red)
//        lineDataSet.fillAlpha = 0.8
//        lineDataSet.drawFilledEnabled = true
//        lineDataSet.drawHorizontalHighlightIndicatorEnabled = false
//        lineDataSet.highlightColor = .systemRed
        
        let data = LineChartData(dataSet: lineDataSet)
        lineChartView.data = data
    }
}
