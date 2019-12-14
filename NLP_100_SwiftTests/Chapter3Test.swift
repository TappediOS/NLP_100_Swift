//
//  Chapter3Test.swift
//  NLP_100_SwiftTests
//
//  Created by jun on 2019/12/11.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import XCTest
@testable import NLP_100_Swift

class Chapter3Test: XCTestCase {

   let fileName = "jawiki-country"
   let bundle = Bundle(for: Chapter3Test.self)
   
   var contents: String {
      let path = bundle.path(forResource: fileName, ofType: "json")!
      return try! String(contentsOfFile: path)
   }
   
   var UK: String {
      let path = bundle.path(forResource: "JsonUK", ofType: "json")!
      return try! String(contentsOfFile: path)
   }
   
   func testQ20() {
      let exp = try! JSONDecoder().decode(WikiSet.self, from: UK.data(using: .utf8)!)
      let result = Chapter3().Q20(contents)
      
      XCTAssertEqual(result.title, exp.title, "タイトルが正しいこと")
      XCTAssertEqual(result.text, exp.text, "テキストが正しいこと")
   }
   
   func testQ21() {
      var category: String {
         let path = bundle.path(forResource: "UKCategory", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      let result = Chapter3().Q21(contents)
      
      XCTAssertEqual(result, category)
   }
   
   func testQ22() {
      var nonCatName: String {
         let path = bundle.path(forResource: "UKCatName", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      let result = Chapter3().Q22(contents)
      
      XCTAssertEqual(result, nonCatName)
   }
   
   func testQ23() {
      var NameLevel: String {
         let path = bundle.path(forResource: "UKNameAndLevel", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      let exp = NameLevel.components(separatedBy: .newlines).filter{!$0.isEmpty}.map { line -> (secName:String, secLevel:Int) in
         print(line)
         let line = line.components(separatedBy: ",")
         return (line[0], Int(line[1]) ?? 0)
      }
      let result = Chapter3().Q23(contents)
      
      _ = zip(result, exp).map {
         XCTAssertEqual($0.secName, $1.secName)
         XCTAssertEqual($0.secLevel, $1.secLevel)
      }
   }
   
   func testQ24() {
      var UKFile: String {
         let path = bundle.path(forResource: "UKFile", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      let result = Chapter3().Q24(contents)

      XCTAssertEqual(result, UKFile)
   }
   
   func testQ25() {
      
   }
   
   func testQ26() {
      
   }
   
    
   func testQ27() {
      
   }
   
   func testQ28() {
      
   }
   
   func testQ29() {
      
   }
   
}
