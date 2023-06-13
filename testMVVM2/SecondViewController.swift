//
//  SecondViewController.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/13.
//

import UIKit

class SecondViewController: CommonClass {

    @IBAction func pushTest(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            print("Failed to instantiate ViewController")
            return
        }
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        commonFunction()
        
        let viewController = ViewController(test: "13")
        viewController.testMethod()
        
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
