//
//  SecondViewController.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/13.
//

import UIKit

class SecondViewController: CommonClass {

    override func viewDidLoad() {
        super.viewDidLoad()

        commonFunction()

    }

    var test: String
        
    init(test: String) {
        self.test = test
        super.init(nibName: "SecondViewController", bundle: nil) // nibName should match your XIB file name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
