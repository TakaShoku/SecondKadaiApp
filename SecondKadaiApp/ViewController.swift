//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 曽和寛貴 on 2018/07/23.
//  Copyright © 2018年 曽和寛貴. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のSecoondViewControllerを取得する
        let secondViewController:SecondViewController = segue.destination as! SecondViewController
        // 遷移先のScondViewControllerで宣言しているtext1に値を代入して渡す
        secondViewController.text1 = nameText.text!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
//        次の入力の為にtextFieldをクリアする
        nameText.text = nil
    }

    
    
}

