//
//  ViewController.swift
//  point
//
//  Created by 5835 on 16/4/18.
//  Copyright © 2016年 5835. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var db:SQLiteDB!
    

    @IBOutlet weak var twoname: UITextField!
    @IBOutlet weak var onename: UITextField!
    @IBOutlet weak var txtUname: UILabel!
    @IBOutlet weak var txtMobile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
        db.execute("create table if not exists t_duim(uid integer primary key,uname varchar(20),uname2 varchar(20))")
        //如果有数据则加载
        
    }
    func initUser() {
        let data = db.query("select * from t_user")
        if data.count > 0 {
            //获取最后一行数据显示
            let user = data[data.count - 1]
            txtUname.text = user["uname"] as? String
            txtMobile.text = user["mobile"] as? String
        }
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
    
    @IBAction func saveClicked(sender: AnyObject) {
        let uname = self.txtUname.text!
        let mobile = self.txtMobile.text!
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql = "insert into t_user(uname,mobile) values('\(uname)','\(mobile)')"
        print("sql: \(sql)")
        //通过封装的方法执行sql
        let result = db.execute(sql)
        print(result)
       
    }
    
    @IBAction func sgow2(sender: AnyObject) {
        initUser()
    }
    
    
}
