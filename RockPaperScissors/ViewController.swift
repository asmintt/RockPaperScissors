//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by user on 2022/02/13.
//

import UIKit

var Anum = Int()
var Bnum = Int()
var num = Int()

class ViewController: UIViewController {
//A Green
    @IBOutlet weak var ARockButton: UIButton! {
        didSet {
            ARockButton.setTitle("✊グー", for: .normal)
            ARockButton.setTitleColor(.black, for: .normal)
            ARockButton.layer.borderColor = UIColor.systemGreen.cgColor
            ARockButton.layer.borderWidth = 1.0
        }
    }

    @IBOutlet weak var AScissorsButton: UIButton! {
        didSet {
            AScissorsButton.setTitle("✌️チョキ", for: .normal)
            AScissorsButton.setTitleColor(.black, for: .normal)
            AScissorsButton.layer.borderColor = UIColor.systemGreen.cgColor
            AScissorsButton.layer.borderWidth = 1.0
        }
    }
    
    @IBOutlet weak var APaperButton: UIButton! {
        didSet {
        APaperButton.setTitle("✋パー", for: .normal)
        APaperButton.setTitleColor(.black, for: .normal)
         APaperButton.layer.borderColor = UIColor.systemGreen.cgColor
           APaperButton.layer.borderWidth = 1.0
        }
    }
    

//B　Blue
    @IBOutlet weak var BRockButton: UIButton! {
        didSet {
            BRockButton.setTitle("✊グー", for: .normal)
            BRockButton.setTitleColor(.blue, for: .normal)
            BRockButton.layer.borderColor = UIColor.systemBlue.cgColor
            BRockButton.layer.borderWidth = 1.0
        }
    }

    @IBOutlet weak var BScissorsButton: UIButton! {
        didSet {
            BScissorsButton.setTitle("✌️チョキ", for: .normal)
            BScissorsButton.setTitleColor(.blue, for: .normal)
            BScissorsButton.layer.borderColor = UIColor.systemBlue.cgColor
            BScissorsButton.layer.borderWidth = 1.0
        }
    }
    
    @IBOutlet weak var BPaperButton: UIButton! {
        didSet {
            BPaperButton.setTitle("✋パー", for: .normal)
            BPaperButton.setTitleColor(.blue, for: .normal)
            BPaperButton.layer.borderColor = UIColor.systemBlue.cgColor
            BPaperButton.layer.borderWidth = 1.0
        }
        
    }

//Action
    @IBAction func ARockAction(_ sender: UIButton) {
        ARockButton.backgroundColor = UIColor.systemGreen
        AScissorsButton.isEnabled = false
        APaperButton.isEnabled = false
        Anum = 0
        print(Anum)
    }
    
    
    @IBAction func BRockAction(_ sender: UIButton) {
        BRockButton.backgroundColor = UIColor.systemBlue
        BScissorsButton.isEnabled = false
        BPaperButton.isEnabled = false
        Bnum = 0
        print(Bnum)
    }
    
    @IBAction func AScissorsButton(_ sender: UIButton) {
        AScissorsButton.backgroundColor = UIColor.systemGreen
        ARockButton.isEnabled = false
        APaperButton.isEnabled = false
        Anum = 2
        print(Anum)
    }
    
    @IBAction func BScissorsButton(_ sender: UIButton) {
        BScissorsButton.backgroundColor = UIColor.systemBlue
        BRockButton.isEnabled = false
        BPaperButton.isEnabled = false
        Bnum = 2
        print(Bnum)
        
    }
    
    @IBAction func APaperButton(_ sender: UIButton) {
        APaperButton.backgroundColor = UIColor.systemGreen
        ARockButton.isEnabled = false
        AScissorsButton.isEnabled = false
        Anum = 5
        print(Anum)
    }
    
    @IBAction func BPaperButton(_ sender: UIButton) {
        BPaperButton.backgroundColor = UIColor.systemBlue
        BRockButton.isEnabled = false
        BScissorsButton.isEnabled = false
        Bnum = 5
        print(Bnum)
    }
    
  
//result
    @IBOutlet weak var ResultButton: UIButton! {
        didSet {
            ResultButton.setTitle("結果は？", for: .normal)
            ResultButton.layer.borderWidth = 2.0
            ResultButton.layer.borderColor = UIColor.red.cgColor
        }
    }
    
//勝敗ルール
    @IBAction func ResultAction(_ sender: UIButton) {
        num = Anum - Bnum
        if Anum == Bnum {
            ResultButton.setTitle("あいこ", for: .normal)
            print(num)
        } else if num == -2 || num == -3 || num == 5 {
            ResultButton.setTitle("緑の勝ちです", for: .normal)
            print(num)
        } else if num == 2 || num == 3 || num == -5 {
            ResultButton.setTitle("青の勝ちです", for: .normal)
            print(num)
        }
    }
    
    @IBOutlet weak var Restart: UIButton! {
        didSet {
            Restart.setTitle("もう一度じゃんけんする", for: .normal)
            num = 0
            //print(num)
        }
    }
    
//リセット
    @IBAction func RestartActtion(_ sender: UIButton) {
        ARockButton.isEnabled = true
        ARockButton.backgroundColor = .white
        AScissorsButton.isEnabled = true
        AScissorsButton.backgroundColor = .white
        APaperButton.isEnabled = true
        APaperButton.backgroundColor = .white
        BRockButton.isEnabled = true
        BRockButton.backgroundColor = .white
        BScissorsButton.isEnabled = true
        BScissorsButton.backgroundColor = .white
        BPaperButton.isEnabled = true
        BPaperButton.backgroundColor = .white
        ResultButton.setTitle("結果は？", for: .normal)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

