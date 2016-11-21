//
//  ViewController.swift
//  MaiZiClass4
//
//  Created by 叶俊中 on 2016/11/20.
//  Copyright © 2016年 叶俊中. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //var button:UIButton?
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var backView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = (backView.frame.width - 25) / 4
       // backView.frame.width = width * CGFloat(2) + CGFloat(15)
        for i in 0...3 {
            let button = UIButton(frame: CGRect(x:CGFloat(5 * (i + 1)) + width * CGFloat(i), y: 5, width: width, height: width))
            button.setBackgroundImage(UIImage(named:"\(i)"), for: .normal)
            button.tag = i
            button.addTarget(self, action: #selector(buttonClick(sender:)), for: .touchUpInside)
            backView.addSubview(button)
        }
        for i in 0...3 {
            let button = UIButton(frame: CGRect(x:CGFloat(5 * (i + 1)) + width * CGFloat(i), y: CGFloat(10) + width, width: width, height: width))
            button.setBackgroundImage(UIImage(named:"\(i + 4)"), for: .normal)
            button.tag = i + 4
            button.addTarget(self, action: #selector(buttonClick(sender:)), for: .touchUpInside)
            backView.addSubview(button)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func buttonClick(sender:UIButton) {
          //print("123")
        if sender.tag == 2{
            label.text = "您选择的图片是中国名胜！"
        }else{
            label.text = "您选择的图片是中国名胜！"
        }
        UIView.animate(withDuration: 0.25, animations: {self.label.alpha = 1}, completion: {ompletion in
            self.perform(#selector(self.hide), with: self, afterDelay: 1.5)
        })
    }
    func hide() {
        self.label.alpha = 0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

