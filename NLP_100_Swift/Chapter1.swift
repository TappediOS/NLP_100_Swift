//
//  Chapter1.swift
//  NLP_100_Swift
//
//  Created by jun on 2019/12/04.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import Cocoa

struct Chapter1 {
   
   //00. 文字列の逆順
   //文字列"stressed"の文字を逆に（末尾から先頭に向かって）並べた文字列を得よ．
   func Q0(_ input: String) -> String {
      return String(input.reversed())
   }
   
   //01. 「パタトクカシーー」
   //「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．
   func Q1(_ input: String) -> String {
      var retStr = ""
      for tmp in 0 ... input.count {
         if tmp % 2 == 1 { retStr += input[input.index(input.startIndex, offsetBy: tmp)..<input.index(input.startIndex, offsetBy: tmp + 1)] }
      }
      return retStr
   }
   
   //02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
   //「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．
   func Q2(_ input1: String, _ input2: String) -> String {
      return zip(input1, input2).map { String($0) + String($1) }.reduce("", +)
   }
   
   //03. 円周率
   //"Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
   //という文を単語に分解し，各単語の（アルファベットの）文字数を先頭から出現順に並べたリストを作成せよ．
   func Q3(_ input: String) -> [Int] {
      return input.components(separatedBy: " ").map { $0.pregReplace(pattern: "[,|.]", with: "").count }
   }
   
   //04. 元素記号
   //"Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
   //という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19
   //番目の単語は先頭の1文字，それ以外の単語は先頭に2文字を取り出し，取り出した文字列から単語の位置
   //（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．
   func Q4(_ input: String, _ splitPosi: [Int]) -> [String: Int] {
      let split = input.components(separatedBy: " ")
      let enamerat = split.enumerated()
      
      let arr = enamerat.map { (first: Int, second: String) in
         return splitPosi.contains(first + 1) ? (first + 1, second.prefix(1)) : (first + 1, second.prefix(2))
      }
      
      let dictionary = arr.reduce([String: Int]()) { array, posi in
         var array = array
         array.updateValue(posi.0, forKey: String(posi.1))
         return array
      }
      
      return dictionary
   }
   
   //05. n-gram
   //与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．この関数を用い，
   //"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．
   func Q5_1(_ input: String, _ Ngram: Int) -> [[String]] {
      var retStr: [[String]] = Array()
      _ = input.components(separatedBy: " ").reduce([String]()) { array, str in
         var array = array
         array.append(String(str))
         if array.count == Ngram { retStr.append(array) }
         if array.count == Ngram { array.remove(at: 0) }
         return array
      }
      return retStr
   }
   
   func Q5_2(_ input: String, _ Ngram: Int) -> [[String]] {
      var retStr: [[String]] = Array()
      _ = input.splitInto(2).reduce([String]()) { array, str in
         var array = array
         array.append(String(str))
         if array.count == Ngram { retStr.append(array) }
         if array.count == Ngram { array.remove(at: 0) }
         return array
      }
      return retStr
   }
   
   //06. 集合
   //"paraparaparadise"と"paragraph"に含まれる文字bi-gramの集合を，それぞれ,
   //XとYとして求め，XとYの和集合，積集合，差集合を求めよ．
   //さらに，'se'というbi-gramがXおよびYに含まれるかどうかを調べよ．
   func Q6_1(_ input1: String, _ input2: String) -> (Set<String>, Set<String>, Set<String>) {
      let BeforeX = Q5_2(input1, 2)
      let BeforeY = Q5_2(input2, 2)
      var X: [String] = Array()
      var Y: [String] = Array()
      _ = BeforeX.map { $0.map { X.append($0)} }
      _ = BeforeY.map { $0.map { Y.append($0)} }
      
      let XSet = Set(X)
      let YSet = Set(X)
      let Sum = Set(X + Y)
      let Dif = XSet.subtracting(YSet)
      let Mul = XSet.intersection(YSet)
      
      return (Sum, Dif, Mul)
   }

   func Q6_2(_ input: String, _ checkWord: String) -> Bool {
      let strArr = Q5_2(input, 2)
      return strArr.map { $0.contains(checkWord)}.contains(true)
   }
   
   //07. テンプレートによる文生成
   //引数x, y, zを受け取り「x時のyはz」という文字列を返す関数を実装せよ．
   //さらに，x=12, y="気温", z=22.4として，実行結果を確認せよ．
   func Q7(_ x: Int, _ y: Any, _ z: Any) -> String {
      return "\(x)時の\(y)は\(z)"
   }
   
   //08. 暗号文
   //与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．

   //英小文字ならば(219 - 文字コード)の文字に置換
   //その他の文字はそのまま出力
   //この関数を用い，英語のメッセージを暗号化・復号化せよ．
   func Q8(_ input: String) -> String {
      let retStr = input.map { Cipher -> String in
         let chr = Cipher
         let lowerString = chr.lowercased()
         if lowerString == String(chr) {
            return String(describing: UnicodeScalar(219 - chr.unicodeScalars.first!.value)!)
         }else{
            return String(chr)
         }
      }.joined()

      return retStr
   }
   
   //09. Typoglycemia

   //スペースで区切られた単語列に対して，各単語の先頭と末尾の文字は残し，それ以外の文字の順序をランダムに並び替えるプログラムを作成せよ．
   //ただし，長さが４以下の単語は並び替えないこととする．適当な英語の文
   //（例えば"I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."）
   //を与え，その実行結果を確認せよ．
   func Q9(_ input: String) -> String {
      return input.components(separatedBy: " ").map { Char -> String in
         var char = Char
         if char.count <= 4 { return char }
         let first = String(char.removeFirst())
         let last = String(char.removeLast())
         let shuffled = String(char.shuffled())
         return (first + shuffled + last)
      }.joined(separator: " ")
      
   }
   
}
