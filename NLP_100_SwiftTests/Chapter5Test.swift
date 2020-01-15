//
//  Chapter5Test.swift
//  NLP_100_SwiftTests
//
//  Created by jun on 2020/01/15.
//  Copyright © 2020 jun. All rights reserved.
//

import Foundation
import XCTest
@testable import NLP_100_Swift


class Chapter5Test: XCTestCase {
   let fileName = "nekoCabocha"
   let bundle = Bundle(for: Chapter5Test.self)
   let userDefaults = UserDefaults.standard

   var nekoCabocha: String {
      let path = bundle.path(forResource: fileName, ofType: "txt")!
      return try! String(contentsOfFile: path)
   }
   
   
   
   func testQ40() {
     //if userDefaults.bool(forKey: "isRegistarResultOfQ30") { return }
     let result = Chapter5().Q40(nekoCabocha)
      
      
     //userDefaults.set(result, forKey: "resultOfQ30")
     //userDefaults.set(true, forKey: "isRegistarResultOfQ30")
   }
   
   func testQ41() {
      
    
   }
   
   func testQ42() {
      
   }
   
   func testQ43() {
    
   }
   
   func testQ44() {
     
   }
   
   func testQ45() {
     
   }
   
   func testQ46() {
     
   }
   
   
   func testQ47() {

   }
   
 
   func testQ48() {

   }
   
  
   func testQ49() {

   }
}

