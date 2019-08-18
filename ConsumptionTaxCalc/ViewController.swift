//
//  ViewController.swift
//  ConsumptionTaxCalc
//
//  Created by たうんりばー on 2019/08/17.
//  Copyright © 2019 hidemasa,machikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputPrice: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先画面の instance 宣言
        let resultvc:ResultViewController = segue.destination as! ResultViewController
        resultvc.price = inputPrice.text!
    }
    
    @IBAction func unwind(_ Segue: UIStoryboardSegue) {
    }


}

