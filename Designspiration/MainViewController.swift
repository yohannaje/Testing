//
//  MainViewController.swift
//  Designspiration
//
//  Created by Yoh on 6/20/15.
//  Copyright (c) 2015 Harmony Bunny. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
    
    @IBOutlet weak var mainLabel : UILabel!
    
    
    let quoteArray = ["A whole new world","And at last I see the light","Hakuna Matatta","Part of your World", "theres a light that never goes out","Rango","hey ho lets go"]
    var savedQuotes = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let randomIndex = Int(arc4random_uniform(UInt32(quoteArray.count)))
        mainLabel?.text = quoteArray[randomIndex]
    }
    
    @IBAction func getRandomQuote(sender: UIButton) {
        let randomIndex = Int(arc4random_uniform(UInt32(quoteArray.count)))
        mainLabel?.text = quoteArray[randomIndex]
    }
    
    @IBAction func saveRandomQuote(sender: UIButton) {
        savedQuotes.append(mainLabel.text!)
        println(savedQuotes)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

