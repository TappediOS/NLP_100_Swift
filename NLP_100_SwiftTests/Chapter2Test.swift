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
        let path = bundle.path(forResource: "hightemp_Line5_tails", ofType: "txt")!
        return try! String(contentsOfFile: path)
     }
     let result = Chapter2().Q15(contents, lineNum: 5)
     let errResult = Chapter2().Q14(contents, lineNum: 43)
     XCTAssertEqual(result, Line5)
     XCTAssertNil(errResult)
   }
   

   func testQ16_1() {
      var split1: String {
         let path = bundle.path(forResource: "split1", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
       
       var split2: String {
          let path = bundle.path(forResource: "split2", ofType: "txt")!
          return try! String(contentsOfFile: path)
       }
       var split3: String {
          let path = bundle.path(forResource: "split3", ofType: "txt")!
          return try! String(contentsOfFile: path)
       }
      
      let result = Chapter2().Q16(contents, 3)
      
      XCTAssertEqual(result[0], split1)
      XCTAssertEqual(result[1], split2)
      XCTAssertEqual(result[2], split3)
      
   }
   
  
   func testQ17() {
      var Setted: String {
         let path = bundle.path(forResource: "Set", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      
      let result = Chapter2().Q17(contents)
      let experssion = Set(Setted.components(separatedBy: .newlines).filter{ $0 != ""})
      XCTAssertEqual(result, experssion)
   }
   
   func testQ18() {
    let result = Chapter2().Q18(contents)
   }
   
   //比較できないから自分で確認
   func testQ19() {
      let ans = [("山梨県", 3), ("埼玉県", 3), ("群馬県", 3), ("山形県", 3), ("岐阜県", 2), ("千葉県", 2), ("静岡県", 2), ("愛知県", 2), ("大阪府", 1), ("高知県", 1), ("和歌山県", 1), ("愛媛県", 1)]
      
      var result: [(String, Int)] = Array()
      _ = Chapter2().Q19(contents).map {
         result.append(($0.key, $0.value))
      }
      
      print(result)
      print(ans)
   }
}
