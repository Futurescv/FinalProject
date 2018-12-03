//
//  ConvertViewController.swift
//  ConversionCalculator
//
//  Created by 123 on 2018/10/26.
//  Copyright © 2018年 Jin. All rights reserved.
//

import UIKit

class ConvertViewController: UIViewController {
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var inputlabel: UITextField!
    @IBOutlet weak var choiceLabel2: UITextField!
    @IBOutlet weak var choiceLabel: UITextField!
    @IBOutlet weak var inputlabel2: UITextField!
    @IBOutlet weak var change: UIButton!
    
    var count = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clean(_ sender: Any) {
        self.choiceLabel.text? = ""
        self.inputlabel.text? = ""
    }
    
    @IBAction func one(_ sender: Any) {
        self.inputlabel.text?.append("1")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func two(_ sender: Any) {
        self.inputlabel.text?.append("2")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func three(_ sender: Any) {
        self.inputlabel.text?.append("3")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func zero(_ sender: Any) {
        self.inputlabel.text?.append("0")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func dot(_ sender: Any) {
        self.inputlabel.text?.append(".")
    }
    
    @IBAction func change(_ sender: Any) {
        self.inputlabel.text? = ("-" + self.inputlabel.text!)
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    
    
    @IBAction func four(_ sender: Any) {
        self.inputlabel.text?.append("4")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func five(_ sender: Any) {
        self.inputlabel.text?.append("5")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func six(_ sender: Any) {
        self.inputlabel.text?.append("6")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func seven(_ sender: Any) {
        self.inputlabel.text?.append("7")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func eight(_ sender: Any) {
        self.inputlabel.text?.append("8")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    @IBAction func nine(_ sender: Any) {
        self.inputlabel.text?.append("9")
        let Input = String(self.inputlabel.text!)
        self.choiceLabel.text? = self.convert(input: Input)!
    }
    
    func convert(input: String) -> String? {
        let temp = Double(input)
        var output = 0.0
        switch count {
        case 1:
            output = (temp! - 32) * 5 / 9
        case 2:
            output = temp! * 1.8 + 32
        case 3:
            output = temp!  / 1.609
        case 4:
            output = temp! * 1.609
        default:
            output = (temp! - 32) * 5 / 9
        }
        return String(output)
    }
    
    @IBAction func convertion1(_ sender: Any) {
        let Alert = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
        Alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: {(alertAction) -> Void in
            self.choiceLabel2.text?=("°C")
            self.inputlabel2.text?=("°F")
            self.count = 1
            let Input = String(self.inputlabel.text!)
            self.choiceLabel.text? = self.convert(input: Input)!
        }))
        
        Alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {(alertAction) -> Void in
            self.choiceLabel2.text?=("°F")
            self.inputlabel2.text?=("°C")
            self.count = 2
            let Input = String(self.inputlabel.text!)
            self.choiceLabel.text? = self.convert(input: Input)!
        }))
        
        Alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: {(alertAction) -> Void in
            self.choiceLabel2.text?=("km")
            self.inputlabel2.text?=("mi")
            self.count = 3
            let Input = String(self.inputlabel.text!)
            self.choiceLabel.text? = self.convert(input: Input)!
        }))
        
        Alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {(alertAction) -> Void in
            self.choiceLabel2.text?=("mi")
            self.inputlabel2.text?=("km")
            self.count = 4
            let Input = String(self.inputlabel.text!)
            self.choiceLabel.text? = self.convert(input: Input)!
        }))
        self.present(Alert, animated: true, completion: nil)

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
