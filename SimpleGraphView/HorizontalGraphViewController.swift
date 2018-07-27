//
//  HorizontalGraphViewController.swift
//  SimpleGraphView
//
//  Created by aryzae on 2018/07/27.
//  Copyright © 2018 aryzae. All rights reserved.
//

import UIKit

class HorizontalGraphViewController: UIViewController {
    /// 横グラフ
    // UISlider
    @IBOutlet weak var graph1Slider: UISlider!
    @IBOutlet weak var graph2Slider: UISlider!
    @IBOutlet weak var graph3Slider: UISlider!
    @IBOutlet weak var mask1Slider: UISlider!
    // NSLayoutConstraint
    @IBOutlet var graph1WidthConstraint: NSLayoutConstraint!
    @IBOutlet var graph2WidthConstraint: NSLayoutConstraint!
    @IBOutlet var maskWidthConstraint: NSLayoutConstraint!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureGraphView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureGraphView() {
        // graph3に対するgraph1、graph2の割合を求めてセット
        graph1WidthConstraint = graph1WidthConstraint.changeMultiplier(to: graph1Slider.value / graph3Slider.value)
        graph2WidthConstraint = graph2WidthConstraint.changeMultiplier(to: graph2Slider.value / graph3Slider.value)
        maskWidthConstraint = maskWidthConstraint.changeMultiplier(to: 1.0 - mask1Slider.value)
    }
    
    @IBAction func valueChangedGraph1Slider(_ sender: UISlider) {
        graph1WidthConstraint = graph1WidthConstraint.changeMultiplier(to: sender.value / graph3Slider.value)
    }
    
    @IBAction func valueChangedGraph2Slider(_ sender: UISlider) {
        graph2WidthConstraint = graph2WidthConstraint.changeMultiplier(to: sender.value / graph3Slider.value)
    }
    
    @IBAction func valueChangedGraph3Slider(_ sender: UISlider) {
        graph1WidthConstraint = graph1WidthConstraint.changeMultiplier(to: graph1Slider.value / sender.value)
        graph2WidthConstraint = graph2WidthConstraint.changeMultiplier(to: graph2Slider.value / sender.value)
    }
    
    @IBAction func valueChangedMask1Slider(_ sender: UISlider) {
        maskWidthConstraint = maskWidthConstraint.changeMultiplier(to: 1.0 - sender.value)
    }
}
