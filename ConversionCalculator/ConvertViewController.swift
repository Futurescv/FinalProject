//
//  ConvertViewController.swift
//  ConversionCalculator
//
//  Created by 123 on 2018/10/26.
//  Copyright © 2018年 Jin. All rights reserved.
//

import UIKit

class ConvertViewController: UIViewController {
    @IBOutlet weak var inputlabel: UITextField!
    
    @IBOutlet weak var choiceLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func convertion1(_ sender: Any) {
        let Alert = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
        Alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: {(alertAction) -> Void in
            self.choiceLabel.text?.append(" °C")
            self.inputlabel.text?.append(" °F")
        }))
        
        Alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {(alertAction) -> Void in
            self.choiceLabel.text?.append( " °F")
            self.inputlabel.text?.append(" °C")
        }))
        
        Alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: {(alertAction) -> Void in
            self.choiceLabel.text?.append(" km")
            self.inputlabel.text?.append(" mi")
        }))
        
        Alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {(alertAction) -> Void in
            self.choiceLabel.text?.append(" mi")
            self.inputlabel.text?.append(" km")
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
