//
//  Morph.swift
//  NLP_100_Swift
//
//  Created by jun on 2020/01/15.
//  Copyright © 2020 jun. All rights reserved.
//

import Foundation

class Morph {
   var surface = ""
   var base = ""
   var pos = ""
   var pos1 = ""
   
   init(surface: String, base: String, pos: String, pos1: String) {
      self.surface = surface
      self.base = base
      self.pos = pos
      self.pos1 = pos1
   }
   
   func printInfo() {
      print("surface = \(surface)")
      print("base    = \(base)")
      print("pos     = \(pos)")
      print("pos1    = \(pos1)")
   }

}
