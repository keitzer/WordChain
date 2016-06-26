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
                it("should chain to the same letter in 1 step") {
                    let result = subject.wordChain(withStartingWord: "A", withEndingWord: "A")
                    expect(result.count).to(equal(2))
                    expect(result[0]).to(equal("A"))
                    expect(result[1]).to(equal("A"))
                }
                
                it("should chain from A to I in 1 step") {
                    let result = subject.wordChain(withStartingWord: "A", withEndingWord: "I")
                    expect(result.count).to(equal(2))
                    expect(result[0]).to(equal("A"))
                    expect(result[1]).to(equal("I"))
                }
            }
            
            describe("with 2 letters") {
                it("should chain to the same word in 1 step") {
                    let result = subject.wordChain(withStartingWord: "AM", withEndingWord: "AM")
                    expect(result.count).to(equal(2))
                    expect(result[0]).to(equal("AM"))
                    expect(result[1]).to(equal("AM"))
                }
                
                it("should chain to a word with 1 letter difference in 1 step") {
                    let result = subject.wordChain(withStartingWord: "IF", withEndingWord: "IS")
                    expect(result.count).to(equal(2))
                    expect(result[0]).to(equal("IF"))
                    expect(result[1]).to(equal("IS"))
                }
                
                it("should chain from IS to AM in 2 steps") {
                    let result = subject.wordChain(withStartingWord: "IS", withEndingWord: "AM")
                    expect(result.count).to(equal(3))
                    expect(result[0]).to(equal("IS"))
                    expect(result[1]).to(equal("AS"))
                    expect(result[2]).to(equal("AM"))
                }
            }
        }
    }
}
