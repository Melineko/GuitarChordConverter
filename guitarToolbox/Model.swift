//
//  Model.swift
//  guitarToolbox
//
//  Created by Melissa Briere on 08/02/2024.
//

import Foundation

// Model Converter

class Converter {
    // Properties
    let notes = ["do", "do#", "ré","mi b", "mi", "fa", "fa#", "sol", "sol#", "la", "si b", "si"]
    var chordBaseIndex = 0
    var newChord = ""
    
    // Methods
    func newChordIndex(index chord: Int) {
        var newIndex = chord - 3 // Third gap
        if newIndex < 0 {
            newIndex = notes.count + newIndex
        }
        newChord = notes[newIndex]
        // Check
        print (newChord)
        print("La relative pour l'accord de \(notes[chordBaseIndex]) Majeur est \(newChord) mineur")
    }
    //---- Buttons actions ----
    func leftPushed() {
        chordBaseIndex -= 1
        if chordBaseIndex < 0 {
            chordBaseIndex = 11
        }
    }
    func rightPushed() {
        chordBaseIndex += 1
        if chordBaseIndex > 11 {
            chordBaseIndex = 0
        }
    }

}
