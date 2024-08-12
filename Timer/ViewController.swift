//
//  ViewController.swift
//  Timer
//
//  Created by Mürşide Gökçe on 12.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var timer: Timer?
    var kalanZaman = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "zaman \(kalanZaman)"
    }


    @IBAction func buton(_ sender: Any) {
        if timer != nil {
                    timer?.invalidate()
                }
                
                kalanZaman = 15
                label.text = "zaman \(kalanZaman)"
                
                print("Timer başlatılıyor")
                timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonk), userInfo: nil, repeats: true)
    }
    @objc func timerFonk() {
            print("Timer çalışıyor")
            if kalanZaman > 0 {
                kalanZaman -= 1
                label.text = "zaman \(kalanZaman)"
            } else {
                label.text = "süre bitti"
                timer?.invalidate()
                timer = nil
            }
        }
}

