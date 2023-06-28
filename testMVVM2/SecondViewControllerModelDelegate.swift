//
//  SecondViewControllerModelDelegate.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

// ViewControllerModelDelegate.swift
import Foundation

protocol SecondViewControllerModelDelegate {
    //データが更新されたときに呼ばれるメソッド
    func dataHasUpdated()
    //次の画面へ遷移する要求を受けるメソッド
    func pushNextView()
    //次の画面をモーダルで開く
    func modalNextView()
}

