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
    
    @IBOutlet weak var base: UILabel!
    var baseNum = chosenNum
    
    @IBOutlet weak var factor: UILabel!
    var factorPart = 1
    
    @IBOutlet weak var record: UILabel!
    let highRec = UserDefaults.standard
    
    @IBOutlet weak var actionButton: UIButton!
    var symbol = ""
    
    //var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //bannerView = GADBannerView(adSize: kGADAdSizeFullBanner)
        //self.view.addSubview(bannerView)
        //bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        //bannerView.rootViewController = self
        //bannerView.load(GADRequest())
    }
    
    override func viewDidAppear(_ animated: Bool) {
        bigNumber.text = String(bigNum)
        print(highRec.integer(forKey: "\(way)+\(chosenNum)"))
        let rec = highRec.integer(forKey: "\(way)+\(chosenNum)")
        if rec > 0 {
            record.text = String(rec)
        }
        else {
            record.text = "0"
        }
        base.text = String(baseNum)
        
        if way == "multiply" {
            factor.text = "x"+String(factorPart)+"="
            symbol = "+"
        }
        else {
            factor.text = "^"+String(factorPart)+"="
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
            print("multiplied")
            bigNumber.text = String(bigNum)
            if bigNum > highRec.integer(forKey: "\(way)+\(chosenNum)") {
                highRec.set(bigNum, forKey: "\(way)+\(chosenNum)")
                record.text = String(bigNum)
            }
            else {
            }
            factorPart += 1
            factor.text = "x"+String(factorPart)+"="
            print(bigNum)
        }
        else {
            bigNum = bigNum*chosenNum
            print("powered")
            bigNumber.text = String(bigNum)
            if bigNum > highRec.integer(forKey: "\(way)+\(chosenNum)") {
                highRec.set(bigNum, forKey: "\(way)+\(chosenNum)")
                record.text = String(bigNum)
            }
            else {
            }
            factorPart += 1
            factor.text = "^"+String(factorPart)+"="
            print(bigNum)
            
        }
        
        if bigNum > 6000000 {
        
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
