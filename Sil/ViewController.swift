//
//  ViewController.swift
//  Sil
//
//  Created by Oscar Anzola on 7/21/19.
//  Copyright © 2019 WayApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var doubleZeroButton: UIButton!
    @IBOutlet weak var amountLabel: UILabel!
    
    lazy var amountFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.usesGroupingSeparator = true
        formatter.locale = Locale.current
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }()

    var amount: Int = 0 {
        didSet {
            amountLabel.text = amountFormatter.string(from: NSNumber(value: Double(amount) / 100.0))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amount = 0
    }
    
    @IBAction func doubleZero(_ sender: UIButton) {
        amount *= 100
    }
    
    @IBAction func deleteButton(_ sender: UIButton) {
        amount /= 10
    }
    
    @IBAction func numberButton(_ sender: UIButton) {
        amount = amount*10 + sender.tag
    }
}
