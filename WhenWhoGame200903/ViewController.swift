//
//  ViewController.swift
//  WhenWhoGame200903
//
//  Created by Shinya  on 2020/09/03.
//  Copyright © 2020 Shinya . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var whenLabel: UILabel!
    @IBOutlet var whereLabel: UILabel!
    @IBOutlet var whoLabel: UILabel!
    @IBOutlet var whatLabel: UILabel!
    
    //要素。左から0,1,2,3って番号が振られてる？
    let whenArray: [String] = ["一年前","一週間前","昨日","今日"]
    let whereArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let whoArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let whatArray: [String] = ["叫んだ","演説した","怒った","踊った"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change() {
        whenLabel.text = whenArray[index]
        whereLabel.text = whereArray[index]
        whoLabel.text = whoArray[index]
        whatLabel.text = whatArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func reset() {
        whenLabel.text = "----"
        whereLabel.text = "----"
        whoLabel.text = "----"
        whatLabel.text = "----"
        
        index = 0
    }
    
    @IBAction func random() {
        let whenIndex = Int.random(in: 0...3)
        let whereIndex = Int.random(in: 0...3)
        let whoIndex = Int.random(in: 0...3)
        let whatIndex = Int.random(in: 0...3)
        
        print("いつ: \(whenIndex)")
        print("どこで: \(whereIndex)")
        print("だれが: \(whoIndex)")
        print("なにを: \(whatIndex)")
        
        //ここ↓の意味が完全理解できてない。△って感じ。
        //それぞれのラベルに要素を追加する
        whenLabel.text = whenArray[whenIndex]
        whereLabel.text = whereArray[whereIndex]
        whoLabel.text = whoArray[whoIndex]
        whatLabel.text = whatArray[whatIndex]
    }
    
}

