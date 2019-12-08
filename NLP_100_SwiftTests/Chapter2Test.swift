//
//  Chapter2Test.swift
//  NLP_100_SwiftTests
//
//  Created by jun on 2019/12/08.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import XCTest
@testable import NLP_100_Swift


class Chapter2Test: XCTestCase {
   
   let fileName = "hightemp"
   var contents: String {
      let path = Bundle(for: Chapter2Test.self).path(forResource: fileName, ofType: "txt")!
      return try! String(contentsOfFile: path)
   }
   
   func testQ10() {
      XCTAssertEqual(Chapter2().Q10(contents), 24)
   }
   
   func testQ11() {
      
   }
   
   func testQ12() {
     
   }
   
   func testQ13() {
     
   }
   
   func testQ14() {
      
   }

   func testQ15_1() {
     
   }
   
   func testQ15_2() {

   }
   
   func testQ16_1() {
     
      
   }
   
   func testQ16_2() {
   
   }
   
   func testQ17() {

   }
   
   func testQ18() {
    
   }
   
   func testQ19() {

   }
}
