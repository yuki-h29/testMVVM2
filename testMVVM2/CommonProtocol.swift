//
//  CommonProtocol.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

import Foundation
import UIKit
//CommonViewControllerProtocol
protocol CommonViewControllerProtocol {
    
}

protocol CommonViewModelProtocol {
    func performAsyncTask(with viewController: UIViewController, errorMessage: String)
}

//NavigationProtocol
protocol NavigationProtocol {
    //pushViewControllerで次の画面へ遷移する用の関数宣言
    func pushViewController(_ viewController: UIViewController, animated: Bool)
    //popToRootViewControllerで１つ前の画面に戻る用の関数宣言
    func popToRootViewController(animated: Bool)
    
    // fetchDataの例
    func fetchData() async throws -> Data
}

