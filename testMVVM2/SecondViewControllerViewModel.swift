//
//  SecondViewController+ModelDelegate.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

// ViewController+ModelDelegate.swift
import UIKit

extension SecondViewController: SecondViewControllerModelDelegate {
    
    //データが更新されたときに呼ばれる
    func dataHasUpdated() {
        print("データが更新されました。")
    }
    
    //次の画面へ遷移する要求を受けたときに呼ばれる
    func pushNextView() {
        //ここに次の画面へ遷移する処理を書きます。
        print("次の画面へナヴィゲーション遷移します。")
        let model = ThirdViewControllerModel()
        let thirdViewController = ThirdViewController(model: model)
        self.navigationController?.pushViewController(thirdViewController,
                                                      animated: true)
    }
    
    //次の画面へモーダル遷移する要求を受けた時に呼ばれる
    func modalNextView() {
        //ここに次の画面へ遷移する処理を書きます。
        print("次の画面げモーダル遷移します。")
        let model = ThirdViewControllerModel()
        let thirdViewController = ThirdViewController(model: model)
        thirdViewController.modalPresentationStyle = .overFullScreen
        self.present(thirdViewController,animated: true,completion: nil)
        
    }
}
