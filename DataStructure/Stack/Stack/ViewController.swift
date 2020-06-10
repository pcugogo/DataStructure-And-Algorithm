//
//  ViewController.swift
//  Stack
//
//  Created by ChanWook Park on 08/06/2020.
//  Copyright © 2020 ChanWookPark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let array = ["Red", "Orange", "Yellow", "Blue", "DeepBlue", "Purple"]
        var stack = Stack(array)
        stack.push("Rainbow")
        stack.pop()
    
        print(stack)
    }
}

