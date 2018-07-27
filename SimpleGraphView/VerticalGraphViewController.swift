//
//  VerticalGraphViewController.swift
//  SimpleGraphView
//
//  Created by aryzae on 2018/07/27.
//  Copyright © 2018 aryzae. All rights reserved.
//

import UIKit

class VerticalGraphViewController: UIViewController {
    /// 縦グラフ
    // UISlider
    @IBOutlet weak var graph1Slider: UISlider!
    @IBOutlet weak var graph2Slider: UISlider!
    // NSLayoutConstraint
    @IBOutlet var graph1HeightConstraint: NSLayoutConstraint!
    @IBOutlet var graph2HeightConstraint: NSLayoutConstraint!
    
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
        graph1HeightConstraint = graph1HeightConstraint.changeMultiplier(to: graph1Slider.value)
        graph2HeightConstraint = graph2HeightConstraint.changeMultiplier(to: graph2Slider.value)
    }
    
    @IBAction func valueChangedGraph1Slider(_ sender: UISlider) {
        graph1HeightConstraint = graph1HeightConstraint.changeMultiplier(to: sender.value)
    }
    
    @IBAction func valueChangedGraph2Slider(_ sender: UISlider) {
        graph2HeightConstraint = graph2HeightConstraint.changeMultiplier(to: sender.value)
    }
}
