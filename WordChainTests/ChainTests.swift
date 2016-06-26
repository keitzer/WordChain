//
//  ChainTests.swift
//  WordChain
//
//  Created by Alex Ogorek on 6/26/16.
//  Copyright © 2016 Chek. All rights reserved.
//
import Quick
import Nimble

@testable import WordChain

class ChainTests: QuickSpec {
    
    override func spec() {
        var subject: Chain!
        
        describe("Chain") {
            beforeEach {
                subject = Chain()
            }
            
            describe("with 1 letter") {
                it("should be able to chain to the same letter") {
                    let result = subject.wordChain(withStartingWord: "a", withEndingWord: "a")
                    expect(result.count).to(equal(2))
                    expect(result[0]).to(equal("a"))
                    expect(result[1]).to(equal("a"))
                }
            }
        }
    }
}
