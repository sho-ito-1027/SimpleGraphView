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
    @IBOutlet weak var hGraph1WidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var hGraph2WidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var hMaskWidthConstraint: NSLayoutConstraint!
    
    /// 縦グラフ
    // UISlider
    @IBOutlet weak var vGraph1Slider: UISlider!
    @IBOutlet weak var vGraph2Slider: UISlider!
    // NSLayoutConstraint
    @IBOutlet weak var vGraph1HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var vGraph2HeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

