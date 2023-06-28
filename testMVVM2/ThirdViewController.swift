//
//  ThirdViewController.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/18.
//

import UIKit

class ThirdViewController: UIViewController,
                           ThirdViewControllerModelDelegate,
                           NavigationProtocol {
        
    
    var model: ThirdViewControllerModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ThirdViewControllerModel のインスタンスを作成し、delegate に self を設定します
        model = ThirdViewControllerModel()
        model?.delegate = self
        
        // 遷移先のビューコントローラー
        let nextViewController =
            SecondViewController(model: SecondViewControllerModel())
        let errorMessage = "Data fetch timeout" // エラーメッセージ
        
        //非同期処理　APIからデータを読み込めたら遷移　ダメならエラーメッセージ
        model?.performAsyncTask(with: nextViewController, errorMessage: errorMessage)
        
    }
    
    //初期化
    init(model: ThirdViewControllerModel) {
        self.model = model
        super.init(nibName: "ThirdViewController", bundle: nil)
        //NavigationItemを非表示にする
        self.navigationItem.hidesBackButton = true
        
    }
    
    
    func transitionTo(viewController: UIViewController) {
        present(viewController, animated: true, completion: nil)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }

    
    //ストーリーボードやXIBファイルを使用する場合は、このメソッドの実装が必要
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //NavigationContorollerで戻る
    @IBAction func pushPop(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    //NavigationProtocolで戻る
    @IBAction func pushNavigationProtocol(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        popToRootViewController(animated: true)
    }
    
    
    
}
