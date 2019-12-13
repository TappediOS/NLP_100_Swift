//
//  Chapter3.swift
//  NLP_100_Swift
//
//  Created by jun on 2019/12/11.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation

struct WikiSet: Codable {
    let title: String
    let text: String
}

struct Chapter3 {
   
   /// 20. JSONデータの読み込み
   //Wikipedia記事のJSONファイルを読み込み，「イギリス」に関する記事本文を表示せよ．
   //問題21-29では，ここで抽出した記事本文に対して実行せよ．
   func Q20(_ input: String) -> WikiSet {
      let line = input.components(separatedBy: .newlines).filter { !$0.isEmpty }
            
      return line.map{
         return try! JSONDecoder().decode(WikiSet.self, from: $0.data(using: .utf8)!)
      }.filter{ $0.title == "イギリス" }.first!
   }
   
   /// 21. カテゴリ名を含む行を抽出
   //記事中でカテゴリ名を宣言している行を抽出せよ．
   func Q21(_ input: String) -> String {
      let wikiUK = Q20(input)
      return wikiUK.text.components(separatedBy: .newlines).filter { $0.contains("Category") }.joined(separator: "\n") + "\n"
   }
   
   /// 22. カテゴリ名の抽出
   //記事のカテゴリ名を（行単位ではなく名前で）抽出せよ．
   func Q22(_ input: String) -> String {
      let wikiUK = Q20(input)
      let Category = wikiUK.text.components(separatedBy: .newlines).filter{ $0.contains("Category") }
      let nonCat = Category.map { $0.pregReplace(pattern: "\\[\\[Category:", with: "")}
   
      return nonCat.map{$0.pregReplace(pattern: "[\\|[a\\p{Hiragana}]*]*\\]\\]", with: "") }.joined(separator: "\n") + "\n"
   }
   
   /// 23. セクション構造
   //記事中に含まれるセクション名とそのレベル（例えば"== セクション名 =="なら1）を表示せよ．
   func Q23(_ input: String) -> [(secName: String, secLevel: Int)] {
      let wikiUK = Q20(input)
      let sectionLine = wikiUK.text.components(separatedBy: .newlines).filter{ $0.contains("==") }
      let sectionName = sectionLine.map { $0.pregReplace(pattern: "[=]*", with: "")}
      let sectionLevels = sectionLine.map { $0.components(separatedBy: "=")}.map{ ($0.count - 1) / 2 }
      
      return zip(sectionName, sectionLevels).map{ ($0, $1) }
   }
   
   /// 24. ファイル参照の抽出
   //記事から参照されているメディアファイルをすべて抜き出せ．
   func Q24() {
      
   }
   
   /// 25. テンプレートの抽出
   //記事中に含まれる「基礎情報」テンプレートのフィールド名と値を抽出し，辞書オブジェクトとして格納せよ．
   func Q25() {
      
   }
   
   /// 26. 強調マークアップの除去
   //25の処理時に，テンプレートの値からMediaWikiの強調マークアップ（弱い強調，強調，強い強調のすべて）を除去してテキストに変換せよ
   //（参考: マークアップ早見表http://ja.wikipedia.org/wiki/Help:早見表）．
   func Q26() {
      
   }
   
   /// 27. 内部リンクの除去
   //26の処理に加えて，テンプレートの値からMediaWikiの内部リンクマークアップを除去し，テキストに変換せよ
   //（参考: マークアップ早見表http://ja.wikipedia.org/wiki/Help:）．
   func Q27() {
      
   }
   
   /// 28. MediaWikiマークアップの除去
   //27の処理に加えて，テンプレートの値からMediaWikiマークアップを可能な限り除去し，国の基本情報を整形せよ．
   func Q28() {
      
   }
   
   /// 29. 国旗画像のURLを取得する
   //テンプレートの内容を利用し，国旗画像のURLを取得せよ．
   //（ヒント: MediaWiki API(http://www.mediawiki.org/wiki/API:Main_page/ja)の
   //imageinfo(http://www.mediawiki.org/wiki/API:Properties/ja#imageinfo_.2F_ii)を呼び出して，
   //ファイル参照をURLに変換すればよい）
   func Q29() {
      
   }
}
