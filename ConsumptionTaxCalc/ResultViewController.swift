//
//  ResultViewController.swift
//  ConsumptionTaxCalc
//
//  Created by たうんりばー on 2019/08/17.
//  Copyright © 2019 hidemasa,machikawa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var labelA: UILabel!
    var price:String! = ""
    let ctaxrate:Double = 1.08
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 画面の入力規則
        if price.count == 0 {
            labelA.text = "金額を入力してください！"
        } else if price.range(of: #"\d"#, options: .regularExpression) == nil {
            labelA.text = "半角数字で入力してください!"
        } else {
            labelA.text = "税込 "
                + String(Int(round(Double(price)! * ctaxrate)))
                + " 円です!(今年9月まで！)"
        }
    }
    
    func isNumeric(){
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
