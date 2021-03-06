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
   let bundle = Bundle(for: Chapter4Test.self)
   let userDefaults = UserDefaults.standard

   var nekoMecab: String {
      let path = bundle.path(forResource: fileName, ofType: "txt")!
      return try! String(contentsOfFile: path)
   }
   
   
   
   func testQ30() {
      if userDefaults.bool(forKey: "isRegistarResultOfQ30") { return }
      let result = Chapter4().Q30(nekoMecab)
      userDefaults.set(result, forKey: "resultOfQ30")
      userDefaults.set(true, forKey: "isRegistarResultOfQ30")
   }
   
   func testQ31() {
      var nekoSerface: String {
         let path = bundle.path(forResource: "nekoSurface", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      
      let exp = nekoSerface.components(separatedBy: .newlines).filter { $0 != "" }
      let result = Chapter4().Q31()
      XCTAssertEqual(exp, result)
   }
   
   func testQ32() {
      var nekoBase: String {
         let path = bundle.path(forResource: "nekoBase", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      
      let exp = nekoBase.components(separatedBy: .newlines).filter { $0 != "" }
      let result = Chapter4().Q32()
      XCTAssertEqual(exp, result)
   }
   
   func testQ33() {
      var nekoSaNone: String {
         let path = bundle.path(forResource: "nekoSaNone", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      
      let exp = nekoSaNone.components(separatedBy: .newlines).filter { $0 != "" }
      let result = Chapter4().Q33()
      XCTAssertEqual(exp, result)
   }
   
   func testQ34() {
      var nekoNoneNoNone: String {
         let path = bundle.path(forResource: "nekoNoneNoNone", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      
      let exp = nekoNoneNoNone.components(separatedBy: .newlines).filter { $0 != "" }
      let result = Chapter4().Q34()
      XCTAssertEqual(exp, result)
   }
   
   func testQ35() {
      var nekoNoneContinue: String {
         let path = bundle.path(forResource: "nekoNoneContinue", ofType: "txt")!
         return try! String(contentsOfFile: path)
      }
      
      let exp = nekoNoneContinue.components(separatedBy: .newlines).filter { $0 != "" }
      let result = Chapter4().Q35()
      XCTAssertEqual(exp, result)
   }
   
   func testQ36() {
      if userDefaults.bool(forKey: "isRegistarResultOfQ36") { return }
      let result = Chapter4().Q36()
      userDefaults.set(result, forKey: "resultOfQ36")
      userDefaults.set(true, forKey: "isRegistarResultOfQ36")
   }
   
   //グラフの描画はいつかやるよ。
   //というか，Unitテストでやることではないしね。
   func testQ37() {
      _ = Chapter4().Q37()
   }
   
   //グラフの描画はいつかやるよ。
   //というか，Unitテストでやることではないしね。
   func testQ38() {
      _ = Chapter4().Q38()
   }
   
   //グラフの描画はいつかやるよ。
   //というか，Unitテストでやることではないしね。
   func testQ39() {
      _ = Chapter4().Q39()
   }
}
