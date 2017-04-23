//
//  ViewController.swift
//  testAlgo
//
//  Created by Ha Lam on 4/23/17.
//  Copyright © 2017 Gotadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var path =  Set<String>()
  
  func LCS(arr1: [String], arr2: [String]) -> Int {
    guard arr1.count > 0 && arr2.count > 0 else {
      return 0
    }
    var l1 = arr1, l2 = arr2
    if l1.last == l2.last {
      //      l1.removeLast()
      path.insert(l1.removeLast())
      l2.removeLast()
      return 1 + LCS(arr1: l1, arr2: l2)
    }
    else {
      var l11 = l1
      l11.removeLast()
      var l22 = l2
      l22.removeLast()
      return max(LCS(arr1: l1, arr2: l22), LCS(arr1: l11, arr2: l2))
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //    let tam = LCS(arr1: ["A", "G", "G", "T", "A", "B"],
    //                  arr2: ["G", "X", "T", "X", "A", "Y", "B"])
    //    let tam = LCS(arr1: [],
    //                  arr2: [])
    let tam = LCS(arr1: ["A", "B", "C", "D", "G", "H"],
                  arr2: ["A", "E", "D", "F", "H", "R"])
    print(tam)
    print(path)

  }
  
}













