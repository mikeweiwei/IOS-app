//
//  ViewController.swift
//  ipad
//
//  Created by 5835 on 16/3/17.
//  Copyright © 2016年 5835. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var one: UITextField!
    @IBOutlet weak var two: UITextField!
    @IBOutlet weak var three: UITextField!
    @IBAction func add(sender: UIButton) {
        var x:Double!=0
        var y:Double!=0
        var z:Double!=0
        if(!one.text!.isEmpty)
        {
            x=(one.text! as NSString).doubleValue
        }
        if(!two.text!.isEmpty)
        {
            y=(Double)(two.text!)
        }
        z = x + y
        three.text="\(z)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

