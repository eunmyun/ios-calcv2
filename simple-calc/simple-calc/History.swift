//
//  History.swift
//  simple-calc
//
//  Created by MyungJin Eun on 4/28/16.
//  Copyright © 2016 MyungJin Eun. All rights reserved.
//

import UIKit

class History : UIViewController {
    @IBOutlet var label : UILabel!
    
    var history2 : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if history2.count > 0 {
            for index in 0...history2.count - 1 {
                label.text = label.text! + history2[index] + "\n"
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController: ViewController = segue.destinationViewController as! ViewController
        DestViewController.history = history2
    }
}
