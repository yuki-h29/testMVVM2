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
        
        guard let myView = Bundle.main.loadNibNamed("SecondViewController", owner: nil,options: nil)?.first as? UIView else {
            // Handle error
            return
        }
        
        myView.frame = self.view.bounds // メインビューのサイズに合わせる
        self.view.addSubview(myView)
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

