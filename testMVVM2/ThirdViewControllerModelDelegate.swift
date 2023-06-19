//
//  ThirdViewControllerModelDelegate.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

import Foundation
import UIKit

//ThirdViewControllerの宣言用
protocol ThirdViewControllerModelDelegate {
    //画面遷移を行う
    func transitionTo(viewController: UIViewController)
    
    //エラーメッセージを表示する
    func showAlert(message: String)

}

