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
      
   }
   
   func testQ4() {
      
   }
   
   func testQ5() {
      
   }
   
   func testQ6() {
      
   }
   
   func testQ7() {
      
   }
   
   func testQ8() {
      
   }
   
   func testQ9() {
      
   }
}
