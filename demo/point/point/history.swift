//
//  history.swift
//  point
//
//  Created by 5835 on 16/5/9.
//  Copyright © 2016年 5835. All rights reserved.
//

import UIKit

class history: UIViewController {

    var db:SQLiteDB!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var uione: UILabel!
    @IBOutlet weak var uitwo: UILabel!
    
    @IBOutlet weak var textt: UITextView!
    @IBAction func show(sender: AnyObject) {
        let data = db.query("select * from t_user")
        //var count = Int(data.count)
        //var a = 1
        var wo:String = ""
        for var a = 1;a < data.count;a++
        {
            let user = data[data.count - a]
            wo += (user["mobile"] as? String)! + (user["uname"] as? String)!
            wo+="\n"
            text.text = String(a)
        }
        textt.text = wo
        /*if data.count > 0 {
            //获取最后一行数据显示
            let user = data[data.count - 2]
            textt.text = (user["mobile"] as? String)! + (user["uname"] as? String)!
        }*/
            
        }

}
