//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 豊田修平 on 2020/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //ResultViewControllerに渡すための処理ということはわかるが、なぜこの書き方なのか分からない
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.x = textInput.text
    }
    //UItextFieldを文字として使うときは常に.textをつけないといけない?
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    //なぜこれを入れるのかよく分からない
    
}

