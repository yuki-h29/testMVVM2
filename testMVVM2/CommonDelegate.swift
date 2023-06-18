//
//  CommonDelegate.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

import Foundation
import UIKit

//where Selfの意味
//「NavigationProtocolを適用する対象がUIViewController、もしくはそのサブクラスであるとき」
extension NavigationProtocol where Self: UIViewController {
    
    //pushViewControllerを使って次の画面へ遷移する
    func pushViewController(_ viewController: UIViewController, animated: Bool) {
        self.navigationController?.pushViewController(viewController, animated: animated)
    }
    
    //popToRootViewControllerを使ってNavigationControllerの１つ前の画面に戻る
    func popToRootViewController(animated: Bool) {
        self.navigationController?.popToRootViewController(animated: animated)
    }
    
    // fetchDataの例
    func fetchData() async throws -> Data {
        // 非同期にデータを取得する処理
        // ここでは仮にData型を返すとします
        return Data()
    }
}
