//
//  SecondViewController.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/13.
//

import UIKit

class SecondViewController: UIViewController,
                            SecondViewControllerModelDelegate {
    
    var model: SecondViewControllerModel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model = SecondViewControllerModel()
        model.delegate = self
        model.updateData()
    }
    
    init(model: SecondViewControllerModel) {
        self.model = model
        super.init(nibName: "SecondViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func dataHasUpdated() {
        print("Data has been updated")
    }
}
