//
//  Chapter4Test.swfit.swift
//  NLP_100_SwiftTests
//
//  Created by jun on 2020/01/01.
//  Copyright © 2020 jun. All rights reserved.
//

import Foundation
import XCTest
@testable import NLP_100_Swift


class Chapter4Test: XCTestCase {
   let fileName = "nekoMecab"
   let bundle = Bundle(for: Chapter3Test.self)

   var nekoMecab: String {
      let path = bundle.path(forResource: fileName, ofType: "txt")!
      return try! String(contentsOfFile: path)
   }
   
   func testQ40() {
      let result = Chapter4().Q30(nekoMecab)
      
      print(result)
   }
}
