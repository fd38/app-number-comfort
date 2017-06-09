//
//  playViewController.swift
//  Number Comfort
//
//  Created by FD Antony on 9/6/2017.
//  Copyright © 2017 FD38. All rights reserved.
//

import UIKit

class playViewController: UIViewController {

    @IBOutlet weak var bigNumber: UILabel!
    var bigNum = chosenNum
    
    @IBOutlet weak var record: UILabel!
    var recordNum = chosenNum
    
    @IBOutlet weak var actionButton: UIButton!
    var symbol = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        bigNumber.text = String(bigNum)
        record.text = String(recordNum)
        if way == "multiply" {
            symbol = "+"
        }
        else {
            symbol = "x"
        }
        actionButton.setTitle(symbol+String(chosenNum), for: .normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func action(_ sender: UIButton) {
        if way == "multiply" {
            bigNum += chosenNum
            recordNum += chosenNum
            print("multiplied")
            bigNumber.text = String(bigNum)
            record.text = String(recordNum)
            print(bigNum)
        }
        else {
            bigNum = bigNum*chosenNum
            recordNum = bigNum
            print("powered")
            bigNumber.text = String(bigNum)
            record.text = String(recordNum)
            print(bigNum)
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
