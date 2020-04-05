//
//  ViewController.swift
//  ArrayBasic
//
//  Created by 丸本聡 on 2020/04/05.
//  Copyright © 2020 丸本聡. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 配列のセット
        let museum: [String] = ["新国立", "2121", "森美術館"]
        print(museum)
        
        // 配列宣言方法1
        var novelists: [String] = []
        novelists = ["夏目漱石", "三島由紀夫", "川端康成"]
        print(novelists)
        
        // 配列宣言方法2
        var painters = [String]()
        painters = ["ゴッホ", "モネ", "スーラ"]
        print(painters)
        
        // 指定要素分固定値で初期化する
        let values = Array(repeating: 0, count: 10)
        print(values)
        
        // 配列の取り出し
        var minimalists = ["テリーライリー", "ラモンテヤング", "トニーコンラッド"]
        print(minimalists[0])
        // 値の置き換え
        minimalists[3] = "ライヒ"
        print(minimalists)
        
        // 配列の全ての要素にアクセス
        let companys = ["apple", "google", "amazon"]
        for company in companys {
            print("I like \(company).")
        }
        
        // 要素数を表示
        let nums = [1, 3, 5, 7, 9]
        print(nums.count)
        
        // 配列の最後に要素追加
        var actors = ["佐藤健", "菅田将暉", "池松壮亮"]
        actors.append("染谷将太")
        print(actors)
        
        // 配列の最後に追加
        var actress = ["松岡茉優", "チョンジソ", "吉岡里帆"]
        actress.append(contentsOf: ["満島ひかり", "森七菜"])
        print(actress)
        
        // 要素を追加
        var oldArray = ["A", "B", "C"]
        let newArray = oldArray + ["D", "E"]
        print(newArray)
        oldArray += ["X", "Y"]
        print(oldArray)
        
        // 指定要素番号の位置に挿入
        var jazzpianists = ["松永貴志", "上原ひろみ", "ビルエヴァンス"]
        jazzpianists.insert("オーネットコールマン", at: 2)
        print(jazzpianists)
        
        // 複数要素をまとめて挿入
        var smap = ["中居正広", "木村拓哉", "稲垣吾郎"]
        smap.insert(contentsOf: ["草彅剛", "香取慎吾"], at: 2)
        print(smap)
        
        // 要素番号を指定して削除
        var directors = ["岩井俊二", "園子温", "三浦大輔"]
        directors.remove(at: 1)
        print(directors)
        
        // 全ての要素を削除
        var movies = ["パラサイト", "新感染", "母なる証明"]
        movies.removeAll()
        print(movies)
        
        // 最初の要素を削除
        var musicians = ["ACIDMAN", "中納良恵", "高木正勝"]
        musicians.removeFirst()
        
        // 最後の要素を削除
        var photographers = ["川内倫子", "グルスキー", "鈴木理策"]
        photographers.removeLast()
        
        // n番目からm番目まで要素を削除
        var videographers = ["石田尚志", "伊藤貴史", "牧野貴"]
        videographers.removeSubrange(1...3)
        
        // 配列を昇順にソート
        var arr = ["B", "C", "A", "D"]
        arr.sort()
        print(arr)
        
        // 配列を降順にソート
        var arr2 = ["B", "C", "A", "D"]
        arr2.sort(by: {$0 > $1})
        print(arr2)
        
        // 要素をランダムに並べ替え
        var composers = ["ドビュッシー", "ラヴェル", "サティ", "坂本龍一"]
        composers.shuffle()
        print(composers)
        
        // 要素の順番を反転
        var alpArr = ["A", "B", "C", "D"]
        alpArr.reverse()
        print(alpArr)
        
        //配列を結合する
        let aiueo = ["あ", "い", "う", "え", "お"]
        let aiueoStr:String = aiueo.joined()
        print(aiueoStr)
        
        //配列を区切り文字で結合する
        let xyz = ["x", "y", "z"]
        let xyzStr:String = xyz.joined(separator: ",")
        print(xyzStr)
        
        //整数の昇順ソート
        let intArray = [5, 3, 4, 1, 2]
        let sortedInt = intArray.sorted { $0 < $1 }
        print(sortedInt)
         
        //文字列の昇順ソート
        let strArray =
        ["item-b", "item-c", "item-a", "item-e", "item-d",]
        let sortedStr = strArray.sorted { $0 < $1 }
        print(sortedStr)
        
        //整数の降順ソート
        let intArray2 = [5, 3, 4, 1, 2]
        let sortedInt2 = intArray2.sorted { $0 > $1 }
        print(sortedInt2)
         
        //文字列の降順ソート
        let strArray2 =
        ["item-b", "item-c", "item-a", "item-e", "item-d",]
        let sortedStr2 = strArray2.sorted { $0 > $1 }
        print(sortedStr2)
        
        //インデックス番号と要素を取得
        let comedians = ["松本人志", "志村けん", "北野武", "タモリ", "さんま"]
        for (index, elem) in comedians.enumerated() {
            print("\(index):\(elem)")
        }
        
        //全要素を順番に取得
        let numArr = [6, 7, 8, 9, 10]
        numArr.forEach{
            print($0)
        }
        
        //配列の全要素に対して処理
        let numb = [1, 2, 3, 4, 5]
        let twiceNumbs = numb.map{$0 * 2}
        print(twiceNumbs)
        
        //要素を最大最小の要素を取り出す
        let numsArr = [1, 2, 3, 4, 5]
        print(numsArr.max())
        print(numsArr.min())
        
        //条件にマッチする要素のみ取り出す
        let num3 = [1, 2, 3, 4, 5]
        let newNum = num3.filter {$0 > 3}
        print(newNum)
        
        //配列の要素をまとめて一つにする
        let numberArr = [1, 2, 3, 4, 5]
        let newNumberArr = numberArr.reduce(0, {$0 + $1})
        print(newNumberArr)
    }

}

