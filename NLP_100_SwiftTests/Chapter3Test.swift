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
   
   func getJSONData(fileName: String) throws -> Data? {
       guard let path = Bundle.main.path(forResource: fileName, ofType: "json") else { return nil }
       let url = URL(fileURLWithPath: path)

       return try Data(contentsOf: url)
   }
   
   let fileName = "jawiki-country"
   let bundle = Bundle(for: Chapter2Test.self)
   var contents: String {
      let path = bundle.path(forResource: fileName, ofType: "json")!
      return try! String(contentsOfFile: path)
   }
   
   func testQ20() {

      guard let data = try? getJSONData(fileName: "JsonUK") else { return }
      guard let UK = try? JSONDecoder().decode(WikiSet.self, from: data) else { return }
      
      print("\n\n\n\(UK.title)\n\n\n")
      
      let result = Chapter3().Q20(contents)
      
      XCTAssertEqual("a", "d")
   }
   
   func testQ21() {
      
   }
   
   func testQ22() {
      
   }
   
   func testQ23() {
      
   }
   
   func testQ24() {
      
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
