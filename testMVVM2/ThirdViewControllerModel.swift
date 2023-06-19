//
//  ThirdViewControllerModel.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

import Foundation
import UIKit
// ThirdViewControllerの関数等を具体的に実装する
class ThirdViewControllerModel {
    
    var delegate: ThirdViewControllerModelDelegate?
    
    func performAsyncTask(with viewController: UIViewController,
                          errorMessage: String) {
        Task {
            do {
                let _ = try await fetchData()
                // 10秒以内にデータ取得が完了した場合
                DispatchQueue.main.async {
                    // デリゲート経由で次の画面に遷移する
                    self.delegate?.transitionTo(viewController: viewController)
                }
            } catch {
                // 10秒以内にデータ取得が完了しなかった場合
                DispatchQueue.main.async {
                    // デリゲート経由でエラーメッセージを表示する
                    self.delegate?.showAlert(message: errorMessage)
                }
                // エラーハンドリング
                print("Error: \(error)")
            }
        }
        
        @Sendable
        func fetchData() async throws -> Data {
            let url = URL(string: "https://example.com")!
            let (data, _) = try await URLSession.shared.data(from: url)
            return data
        }
        
    }
}
