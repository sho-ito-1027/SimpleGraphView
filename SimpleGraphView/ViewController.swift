//
//  ViewController.swift
//  SimpleGraphView
//
//  Created by aryzae on 2018/07/27.
//  Copyright © 2018 aryzae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /// 横グラフ
    // UISlider
    @IBOutlet weak var hGraph1Slider: UISlider!
    @IBOutlet weak var hGraph2Slider: UISlider!
    @IBOutlet weak var hGraph3Slider: UISlider!
    @IBOutlet weak var hMask1Slider: UISlider!
    // NSLayoutConstraint
    @IBOutlet var hGraph1WidthConstraint: NSLayoutConstraint!
    @IBOutlet var hGraph2WidthConstraint: NSLayoutConstraint!
    @IBOutlet var hMaskWidthConstraint: NSLayoutConstraint!
    
    /// 縦グラフ
    // UISlider
    @IBOutlet weak var vGraph1Slider: UISlider!
    @IBOutlet weak var vGraph2Slider: UISlider!
    // NSLayoutConstraint
    @IBOutlet var vGraph1HeightConstraint: NSLayoutConstraint!
    @IBOutlet var vGraph2HeightConstraint: NSLayoutConstraint!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureHorizontalSliderValue()
        configureVerticalSliderValue()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureHorizontalSliderValue() {
        // graph3に対するgraph1、graph2の割合を求めてセット
        hGraph1WidthConstraint.changeMultiplier(to: hGraph1Slider.value / hGraph3Slider.value)
        hGraph2WidthConstraint.changeMultiplier(to: hGraph2Slider.value / hGraph3Slider.value)
        hMaskWidthConstraint.changeMultiplier(to: 1.0 - hMask1Slider.value)
    }
    
    func configureVerticalSliderValue() {
        vGraph1HeightConstraint.changeMultiplier(to: vGraph1Slider.value)
        vGraph2HeightConstraint.changeMultiplier(to: vGraph2Slider.value)
    }

}

