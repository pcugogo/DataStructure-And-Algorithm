//
//  ViewController.swift
//  Queue
//
//  Created by ChanWook Park on 11/06/2020.
//  Copyright © 2020 ChanWookPark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rainbow = ["Red",
                       "Orange",
                       "Yellow",
                       "green",
                       "Blue",
                       "DeepBlue",
                       "Purple"]
        
        var queue = Queue([])
        
        for color in rainbow {
            queue.enqueue(color)
        }
        
        let firstColor = queue.dequeue() as! String
        queue.enqueue(firstColor)
        
        print(queue)
    }
}

