//
//  ViewController.swift
//  2
//
//  Created by 中野翔太 on 2021/12/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var segumentedControl: UISegmentedControl!
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label: UILabel!

    @IBAction func didTapButton(_ sender: Any) {
        // 入力
        let text1 = Double(textField1.text ?? "") ?? 0
        let text2 = Double(textField2.text ?? "") ?? 0
        let index = segumentedControl.selectedSegmentIndex
        switch index {
        case 0:
            label.text = "\(text1 + text2)"
        case 1:
            label.text = "\(text1 - text2)"
        case 2:
            label.text = "\(text1 * text2)"
        case 3:
            if text2 == 0 {
                label.text = "0は代入できません"
            } else {
                label.text = "\(text1 / text2)"
            }
        default:
            print("aa")
        }
    }

}
