//
//  HelpViewController.swift
//  CoinSaver
//
//  Created by Ryan Morrison on 13/08/2018.
//  Copyright © 2018 Ryan Morrison. All rights reserved.
//

import Cocoa

class HelpViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func close(_ sender: Any){
        dismissViewController(self)
    }
    
}
