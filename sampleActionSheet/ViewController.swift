//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Eriko Ichinohe on 2016/01/29.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapBtn(_ sender: UIButton) {
        
        
        //アクションシートを作る
        let alertController = UIAlertController(title: "行くアクティビティ", message: "どれにする？", preferredStyle: UIAlertControllerStyle.actionSheet)
        
       
        // アクション１ボタンを追加
        alertController.addAction(UIAlertAction(
            title: "ヨガ",
            style: .default,
            handler: { action in self.myAction("ヨガ") } ))
        // アクション２ボタンを追加
        alertController.addAction(UIAlertAction(
            title: "バスケ",
            style: .default,
            handler: { action in self.myAction("バスケ") } ))
        
        // 削除ボタンを追加
        alertController.addAction(UIAlertAction(
            title: "ムエタイ",
            style: .destructive,
            handler: { action in self.myDelete() } ))
        // キャンセルボタンを追加
        alertController.addAction(UIAlertAction(
            title: "今日はやめとく",
            style: .cancel,
            handler: { action in self.myCancel() } ))
        // アラートを表示する
        present(alertController, animated: true, completion: nil)
        
    }
    
    // アクションが選択されたとき呼ばれるメソッド
    func myAction(_ activitiy:String!) {
        //let activitiy = activitiy
        print("アクション")
        myLabel.text = "\(activitiy!)にいこう！"
    }
    // 削除が選択されたとき呼ばれるメソッド
    func myDelete() {
        print("削除")
        myLabel.text = "ムエタイ頑張ろ！"
    }
    // キャンセルが選択されたとき呼ばれるメソッド
    func myCancel() {
        print("キャンセル")
        myLabel.text = "明日は行こう！"
    }


    
}




