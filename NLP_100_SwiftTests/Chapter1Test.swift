//
//  Chapter1Test.swift
//  NLP_100_SwiftTests
//
//  Created by jun on 2019/12/04.
//  Copyright © 2019 jun. All rights reserved.
//

import XCTest
@testable import NLP_100_Swift

class Chapter1Test: XCTestCase {
   
   func testQ0() {
      XCTAssertEqual(Chapter1().Q0("stressed"), "desserts")
   }
   
   func testQ1() {
      XCTAssertEqual(Chapter1().Q1("パタトクカシーー"), "タクシー")
   }
   
   func testQ2() {
      XCTAssertEqual(Chapter1().Q2("パトカー", "タクシー"), "パタトクカシーー")
   }
   
   func testQ3() {
      XCTAssertEqual(Chapter1().Q3("Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."), [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9])
   }
   
//   func testQ4() {
//      XCTAssertEqual(
//      Chapter1().Q4("Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.", splitPosi: [1, 5, 6, 7, 8, 9, 15, 16, 19]),
//      ["H": 1, "Ne": 10, "Be": 4, "Al": 13, "B": 5, "O": 8, "Li": 3, "F": 9, "He": 2, "S": 16, "Cl": 17, "K": 19, "Ar": 18, "C": 6, "N": 7, "Mi": 12, "Si": 14, "Ca": 20, "P": 15, "Na": 11])
//   }
//
   func testQ5() {
      
   }
   
   func testQ6() {
      
   }
   
   func testQ7() {
      XCTAssertEqual(Chapter1().Q7(12, "気温", 22.4), "12時の気温は22.4")
   }
   
   func testQ8() {
      
   }
   
   func testQ9() {
      
   }
}
