//
//  ViewController.swift
//  CoinSaver
//
//  Created by Ryan Morrison on 12/08/2018.
//  Copyright © 2018 Ryan Morrison. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    //OUTLETS
    
    @IBOutlet weak var oneP: NSTextField!
    @IBOutlet weak var twoP: NSTextField!
    @IBOutlet weak var fiveP: NSTextField!
    @IBOutlet weak var tenP: NSTextField!
    @IBOutlet weak var twentyP: NSTextField!
    @IBOutlet weak var fiftyP: NSTextField!
    @IBOutlet weak var onePound: NSTextField!
    @IBOutlet weak var twoPound: NSTextField!
    @IBOutlet weak var fivePound: NSTextField!
    @IBOutlet weak var tenPound: NSTextField!
    @IBOutlet weak var twentyPound: NSTextField!
    @IBOutlet weak var fiftyPound: NSTextField!
    @IBOutlet weak var totalValue: NSTextField!
    @IBOutlet weak var resetButtonStyle: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func returnTotal() -> String {
        
        let onePence:Double = Double(oneP.stringValue) ?? 0
        let twoPence:Double = Double(twoP.stringValue) ?? 0
        let fivePence:Double = Double(fiveP.stringValue) ?? 0
        let tenPence:Double = Double(tenP.stringValue) ?? 0
        let twentyPence:Double = Double(twentyP.stringValue) ?? 0
        let fiftyPence:Double = Double(fiftyP.stringValue) ?? 0
        let onePnd:Double = Double(onePound.stringValue) ?? 0
        let twoPnd:Double = Double(twoPound.stringValue) ?? 0
        let fivePnd:Double = Double(fivePound.stringValue) ?? 0
        let tenPnd:Double = Double(tenPound.stringValue) ?? 0
        let twentyPnd:Double = Double(twentyPound.stringValue) ?? 0
        let fiftyPnd:Double = Double(fiftyPound.stringValue) ?? 0
        
        let result = (onePence / 100) + (twoPence / 50) + (fivePence / 25) + (tenPence / 10) + (twentyPence / 5) + (fiftyPence / 2) + onePnd + (twoPnd * 2) + (fivePnd * 5) + (tenPnd * 10) + (twentyPnd * 20) + (fiftyPnd * 50)
        
        let formatter = NumberFormatter();
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "en_UK")
        let priceString = formatter.string(from: result as NSNumber)!
        
        return priceString
    }
    
    @IBAction func calculateTotal(_ sender: Any) {
        totalValue.stringValue = returnTotal()
    }
    
    @IBAction func reset(_ sender: Any){
        oneP.stringValue = ""
        twoP.stringValue = ""
        fiveP.stringValue = ""
        tenP.stringValue = ""
        twentyP.stringValue = ""
        fiftyP.stringValue = ""
        onePound.stringValue = ""
        twoPound.stringValue = ""
        fivePound.stringValue = ""
        tenPound.stringValue = ""
        twentyPound.stringValue = ""
        fiftyPound.stringValue = ""
        totalValue.stringValue = "£0"
    }
    
    @IBAction func about(_ sender: Any){
        
    }

  

}



extension ViewController {
    func html() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        let stringOutput = dateFormatter.string(from: date)
        
        var html = "<html><head><title>CashCounter UK 💰 Report</title></head><body><br /><br />"
        html += "<h1 style=\"color:#F5A525\">CashCounter UK 💰 Report</h1>"
        html += "<h3>On \(stringOutput)</h3>"
        html += "<h2>Total saved: \(returnTotal())</h2>"
        html += "<ul>"
        
        if oneP.stringValue != "" {
            html += "<li><b>1p:</b> \(String(describing: oneP.stringValue))</li>"
        } else {
            html += "<li><b>1p:</b> 0p</li>"
        }
        
        if twoP.stringValue != "" {
            html += "<li><b>2p:</b> \(String(describing: twoP.stringValue))</li>"
        } else {
            html += "<li><b>2p:</b> 0p</li>"
        }
        
        if fiveP.stringValue != "" {
            html += "<li><b>5p:</b> \(String(describing: fiveP.stringValue))</li>"
        } else {
            html += "<li><b>5p:</b> 0p</li>"
        }
        
        if tenP.stringValue != "" {
            html += "<li><b>10p:</b> \(String(describing: tenP.stringValue))</li>"
        } else {
            html += "<li><b>10p:</b> 0p</li>"
        }
        
        if twentyP.stringValue != "" {
            html += "<li><b>20p:</b> \(String(describing: twentyP.stringValue))</li>"
        } else {
            html += "<li><b>20p:</b> 0p</li>"
        }
        
        if fiftyP.stringValue != "" {
            html += "<li><b>50p:</b> \(String(describing: fiftyP.stringValue))</li>"
        } else {
            html += "<li><b>50p:</b> 0p</li>"
        }
        
        if onePound.stringValue != "" {
            html += "<li><b>£1:</b> \(String(describing: onePound.stringValue))</li>"
        } else {
            html += "<li><b>£1:</b> 0p</li>"
        }
        
        if twoPound.stringValue != "" {
            html += "<li><b>£2:</b> \(String(describing: twoPound.stringValue))</li>"
        } else {
            html += "<li><b>£2:</b> 0p</li>"
        }
        
        if fivePound.stringValue != "" {
            html += "<li><b>£5:</b> \(String(describing: fivePound.stringValue))</li>"
        } else {
            html += "<li><b>£5:</b> 0p</li>"
        }
        
        if tenPound.stringValue != "" {
            html += "<li><b>£10:</b> \(String(describing: tenPound.stringValue))</li>"
        } else {
            html += "<li><b>£10:</b> 0p</li>"
        }
        
        if twentyPound.stringValue != "" {
            html += "<li><b>£20:</b> \(String(describing: twentyPound.stringValue))</li>"
        } else {
            html += "<li><b>£20:</b> 0p</li>"
        }
        
        if fiftyPound.stringValue != "" {
            html += "<li><b>£50:</b> \(String(describing: fiftyPound.stringValue))</li>"
        } else {
            html += "<li><b>£50:</b> 0p</li>"
        }
        
        html += "</ul></body></html>"
        return html
    }
}
