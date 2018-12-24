//
//  ViewController.swift
//  ToolManager
//
//  Created by 唐道勇 on 2018/12/21.
//  Copyright © 2018 唐道勇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let add = "1.011" *+* "2.&45"
        print(add ?? "0")
        
        let one = DecimalNumberTool.add("1.011", right: "1.2&")//"1.011" "2.835"
        print(one)
    }
}

