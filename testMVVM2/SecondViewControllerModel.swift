//
//  SecondViewControllerModel.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

import Foundation

class SecondViewControllerModel {
    var delegate: SecondViewControllerModelDelegate?
    
    //通常の呼びかた
    func updateData() {
        delegate?.dataHasUpdated()
    }
    
    /*
    let model = SecondViewControllerModel()
    model.data = "New Value"
    */
    
    //↑のようなコードでdataの値が変更されるとdidSetが呼ばれる
    var data: String = "" {
        didSet {
            delegate?.dataHasUpdated()
        }
    }
}
