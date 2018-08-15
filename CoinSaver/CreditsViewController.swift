//
//  CreditsViewController.swift
//  CoinSaver
//
//  Created by Ryan Morrison on 12/08/2018.
//  Copyright © 2018 Ryan Morrison. All rights reserved.
//

import Cocoa

class CreditsViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func close(_ sender: Any){
        dismissViewController(self)
    }
    
}
