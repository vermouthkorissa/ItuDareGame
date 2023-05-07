//
//  ViewController.swift
//  ItuDareGame
//
//  Created by 鈴木理紗子 on 2023/05/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var resetButton: UIButton!
    @IBOutlet var randomButton: UIButton!
    
    let itsuArray: [String] = ["１年前", "１週間前", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    var index: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeButton.layer.cornerRadius = 35
        resetButton.layer.cornerRadius = 35
        randomButton.layer.cornerRadius = 35
        
        itsuLabel.layer.cornerRadius = 12
        dokodeLabel.layer.cornerRadius = 12
        daregaLabel.layer.cornerRadius = 12
        doshitaLabel.layer.cornerRadius = 12
        
        itsuLabel.clipsToBounds = true
        dokodeLabel.clipsToBounds = true
        daregaLabel.clipsToBounds = true
        doshitaLabel.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 3{
            
            index = 0
        }else{
            index = index + 1
        }
        
        
        
        
    }
    
    @IBAction func reset(){
        
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        index = 0
        
    }

    @IBAction func random(){
        
        let itsuindex = Int.random(in: 0...3)
        let dokodeindex = Int.random(in: 0...3)
        let daregaindex = Int.random(in: 0...3)
        let doshitaindex = Int.random(in: 0...3)
        
        print("いつ: \(itsuindex)")
        print("どこで: \(dokodeindex)")
        print("だれが: \(daregaindex)")
        print("どうした: \(doshitaindex)")
        
        itsuLabel.text = itsuArray[itsuindex]
        dokodeLabel.text = dokodeArray[dokodeindex]
        daregaLabel.text = daregaArray[daregaindex]
        doshitaLabel.text = dokodeArray[doshitaindex]
        
    }

}

