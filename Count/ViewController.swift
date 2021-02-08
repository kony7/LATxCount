//
//  ViewController.swift
//  Count
//
//  Created by 小西星七 on 2021/01/16.
//

import UIKit

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let v = Int("000000" + hex, radix: 16) ?? 0
        let r = CGFloat(v / Int(powf(256, 2)) % 256) / 255
        let g = CGFloat(v / Int(powf(256, 1)) % 256) / 255
        let b = CGFloat(v / Int(powf(256, 0)) % 256) / 255
        self.init(red: r, green: g, blue: b, alpha: min(max(alpha, 0), 1))
    }
}

class ViewController: UIViewController {

    var number:Int = 0;
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(){
        number = number + 1
        colorChange()
    }
    
    @IBAction func minus(){
        number = number - 1
        colorChange()
    }
    
    @IBAction func double(){
        number = number * 2
        colorChange()
    }
    
    @IBAction func half(){
        number = number / 2
        colorChange()
    }
    
    @IBAction func clesr(){
        number = 0
        colorChange()
    }
    
    func colorChange(){
        if number >= 10{
            label.textColor = UIColor(hex: "D61D00")
        }else{
            label.textColor = UIColor(hex: "595959")
        }
        label.text = String(number)
    }
    
}

