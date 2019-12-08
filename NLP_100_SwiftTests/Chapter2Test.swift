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
   let bundle = Bundle(for: Chapter2Test.self)
   var contents: String {
      let path = bundle.path(forResource: fileName, ofType: "txt")!
      return try! String(contentsOfFile: path)
   }
   
   func testQ10() {
      XCTAssertEqual(Chapter2().Q10(contents), 24)
   }
   
   func testQ11() {
      var ans: String {
         let path = bundle.path(forResource: "hightemp_Tab_To_Space", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      
      XCTAssertEqual(Chapter2().Q11(contents), ans)
   }
   
   func testQ12() {
     var col1: String {
        let path = bundle.path(forResource: "col1", ofType: "txt")!
        return try! String(contentsOfFile: path)
     }
      
      var col2: String {
         let path = bundle.path(forResource: "col2", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
     
      XCTAssertEqual(Chapter2().Q12(contents, 0), col1)
      XCTAssertEqual(Chapter2().Q12(contents, 1), col2)
   }
   
   func testQ13() {
     var col1: String {
        let path = bundle.path(forResource: "col1", ofType: "txt")!
        return try! String(contentsOfFile: path)
     }
      
      var col2: String {
         let path = bundle.path(forResource: "col2", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      var col1Andcol2: String {
         let path = bundle.path(forResource: "col1+col2", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      
      let result = Chapter2().Q13(col1, col2)
      XCTAssertEqual(result, col1Andcol2)
   }
   
   func testQ14() {
      var Line5: String {
         let path = bundle.path(forResource: "hightemp_Line5", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      let result = Chapter2().Q14(contents, lineNum: 5)
      let errResult = Chapter2().Q14(contents, lineNum: 43)
      XCTAssertEqual(result, Line5)
      XCTAssertNil(errResult)
   }

   func testQ15_1() {
     var Line5: String {
        let path = bundle.path(forResource: "hightemp_Line5_Tail", ofType: "txt")!
        return try! String(contentsOfFile: path)
     }
     let result = Chapter2().Q15(contents, lineNum: 5)
     let errResult = Chapter2().Q14(contents, lineNum: 43)
     XCTAssertEqual(result, Line5)
     XCTAssertNil(errResult)
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
