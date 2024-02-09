//
//  ViewController.swift
//  guitarToolbox
//
//  Created by Melissa Briere on 07/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
// Major views and label
    @IBOutlet weak var majorView: UIView!
    @IBOutlet weak var majorLabel: UILabel!
    @IBOutlet weak var chordMajLabel: UILabel!
// Minor views and label
    @IBOutlet weak var minorView: UIView!
    @IBOutlet weak var minorLabel: UILabel!
    @IBOutlet weak var chordMinLabel: UILabel!

    
// Model
    var converter = Converter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupStyle()
        displayChord()
    }
    
// Display
    func displayChord() {
        chordMajLabel.text = converter.notes[converter.chordBaseIndex].capitalized
        converter.newChordIndex(index: converter.chordBaseIndex)
        chordMinLabel.text = converter.newChord.capitalized
    }
// Style
    func setupStyle() {
        majorView.layer.cornerRadius = 10
        majorLabel.layer.masksToBounds = true
        majorLabel.layer.cornerRadius = 6
        minorView.layer.cornerRadius = 10
        minorLabel.layer.masksToBounds = true
        minorLabel.layer.cornerRadius = 6
    }
    
// Actions
    @IBAction func leftButton(_ sender: Any) {
        converter.leftPushed()
        displayChord()
    }
    
    @IBAction func rightButton(_ sender: Any) {
        converter.rightPushed()
        displayChord()
    }
    
}

