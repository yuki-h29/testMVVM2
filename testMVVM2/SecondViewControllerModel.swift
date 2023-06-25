//
//  SecondViewControllerModel.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

// ViewControllerModel.swift
import Foundation

class SecondViewControllerModel {
    var delegate: SecondViewControllerModelDelegate?
    
    //データの更新要求
    func updateData() {
        delegate?.dataHasUpdated()
    }
    
    //ナビゲーションで画面遷移の要求
    func requestViewTransitionNavigation() {
        delegate?.pushNextView()
    }
    
    //モーダルでの画面遷移の要求
    func requestViewTransitionModel() {
        delegate?.modalNextView()
    }
    
    //dataの値が変更されるとDelegateに通知
    var data: String = "" {
        didSet {
            delegate?.dataHasUpdated()
        }
    }
}
