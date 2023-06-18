//
//  SecondViewControllerModel.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

import Foundation

class SecondViewControllerModel {
    var delegate: SecondViewControllerModelDelegate?
    
    func updateData() {
        // data update logic here...
        
        // Notify the delegate that the data has been updated
        delegate?.dataHasUpdated()
    }
}
