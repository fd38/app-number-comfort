//
//  ViewController.swift
//  Number Comfort
//
//  Created by FD Antony on 9/6/2017.
//  Copyright © 2017 FD38. All rights reserved.
//

import UIKit

    var chosenNum = 1

class ViewController: UIViewController {
    
    @IBOutlet weak var num1: UIButton!
    @IBOutlet weak var num2: UIButton!
    @IBOutlet weak var num3: UIButton!
    @IBOutlet weak var num4: UIButton!
    @IBOutlet weak var num5: UIButton!
    @IBOutlet weak var num6: UIButton!
    @IBOutlet weak var num7: UIButton!
    @IBOutlet weak var num8: UIButton!
    @IBOutlet weak var num9: UIButton!
    @IBOutlet weak var colorbg: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func choose1(_ sender: UIButton) {
        chosenNum = 1
        print(chosenNum)
    }
    @IBAction func choose2(_ sender: UIButton) {
        chosenNum = 2
        print(chosenNum)
    }
    @IBAction func choose3(_ sender: UIButton) {
        chosenNum = 3
        print(chosenNum)
    }
    @IBAction func choose4(_ sender: UIButton) {
        chosenNum = 4
        print(chosenNum)
    }
    @IBAction func choose5(_ sender: UIButton) {
        chosenNum = 5
        print(chosenNum)
    }
    @IBAction func choose6(_ sender: UIButton) {
        chosenNum = 6
        print(chosenNum)
    }
    @IBAction func choose7(_ sender: UIButton) {
        chosenNum = 7
        print(chosenNum)
    }
    @IBAction func choose8(_ sender: UIButton) {
        chosenNum = 8
        print(chosenNum)
    }
    @IBAction func choose9(_ sender: UIButton) {
        chosenNum = 9
        print(chosenNum)
    }

}

