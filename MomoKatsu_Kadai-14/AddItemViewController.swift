//
//  AddItemViewController.swift
//  MomoKatsu_Kadai-14
//
//  Created by モモカツ on 2023/07/10.
//

import UIKit

class AddItemViewController: UIViewController {

    private(set) var inputName: String??

    // 追加名前入力用テキストフィールド
    @IBOutlet weak var nameTextField: UITextField!

    // セーブボタンを選択した場合
    @IBAction func tapSaveButtonItems(_ sender: Any) {
        inputName = nameTextField.text!
        //print(inputName!!)
        performSegue(withIdentifier: "unwindSegueInputName", sender: nil)
    }

    // キャンセルを選択した場合
    @IBAction func tapCancelButtonItems(_ sender: Any) {
        // モーダル遷移で元に画面遷移
        dismiss(animated: true, completion: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
