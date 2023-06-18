//
//  ViewController.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/13.
//

import UIKit

class ViewController: UIViewController {
    
    var test: String
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemTeal

        
        let viewController = CommonClass()
        viewController.commonFunction()
        
        
    }
    
    
    init(test: String) {
        self.test = test
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.test = "Default String Value"
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
    }
    
    func testMethod() {
        print("ViewControllerから呼ばれました")
    }
    
}

