//
//  ViewController.swift
//  point
//
//  Created by 5835 on 16/4/18.
//  Copyright © 2016年 5835. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var l1: UILabel!

    @IBOutlet weak var l2: UILabel!
    @IBAction func b1(sender: UIButton) {
        
        l1.text = String(Int(l1.text!)! + 1)
    }
    
    @IBAction func b2(sender: UIButton) {
        l1.text = String(Int(l1.text!)! + 2)
    }
    
    @IBAction func b3(sender: UIButton) {
        l1.text = String(Int(l1.text!)! + 3)
    }
    
    @IBAction func a1(sender: UIButton) {
        l2.text = String(Int(l2.text!)! + 1)
    }
    
    @IBAction func a2(sender: UIButton) {
        l2.text = String(Int(l2.text!)! + 2)
    }
    
    @IBAction func a3(sender: UIButton) {
        l2.text = String(Int(l2.text!)! + 3)

    }
    
    @IBAction func end(sender: UIButton) {
        l1.text = "0"
        l2.text = "0"
    }
}
