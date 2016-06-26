//
//  Chain.swift
//  WordChain
//
//  Created by Alex Ogorek on 6/26/16.
//  Copyright © 2016 Chek. All rights reserved.
//

import Foundation

class Chain: NSObject {
    
    private var wordTree: [String:AnyObject] = [:]
    
    func addListToTree() {
        addWordToTree("ask")
        addWordToTree("as")
        addWordToTree("at")
        addWordToTree("am")
        addWordToTree("big")
        addWordToTree("bat")
        addWordToTree("bin")
        addWordToTree("bit")
        addWordToTree("ash")
        addWordToTree("ass")
    }
    
    private func addWordToTree(word: String) {
        if word.characters.count == 0 {
            return
        }
        
        let array = word.characters.map { String($0) }
        let letterChain = array.joinWithSeparator(".")
        guard let _: [String:AnyObject] = wordTree.valueForKeyPath(letterChain) else {
            wordTree.setValue([:], forKeyPath: letterChain)
            return
        }
    }
    
    func isValidWord(word: String) -> Bool {
        let array = word.characters.map { String($0) }
        let letterChain = array.joinWithSeparator(".")
        
        if let _: [String:AnyObject] = wordTree.valueForKeyPath(letterChain) {
            return true
        }
        return false
    }
    
    func wordChain(withStartingWord startingWord: String, withEndingWord endingWord: String) -> [String]  {
        return [startingWord, endingWord]
    }
}