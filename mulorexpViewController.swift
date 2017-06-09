//
//  mulorexpViewController.swift
//  Number Comfort
//
//  Created by FD Antony on 9/6/2017.
//  Copyright © 2017 FD38. All rights reserved.
//

import UIKit

var way = ""

class mulorexpViewController: UIViewController {

    @IBOutlet weak var chomul: UIButton!
    @IBOutlet weak var choexp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseMul(_ sender: UIButton) {
        way = "multiply"
        print(chosenNum)
        print(way)
    }
    @IBAction func chooseExp(_ sender: UIButton) {
        way = "Exponential"
        print(chosenNum)
        print(way)
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
