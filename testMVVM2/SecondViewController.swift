//
//  SecondViewController.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/13.
//

import UIKit

class SecondViewController: UIViewController,
                            SecondViewControllerModelDelegate,
                            NavigationProtocol {
    
    var model: SecondViewControllerModel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        //通常の呼び方
        model.updateData()
        
        //dataの値を変更して、didSetを呼ぶ 
        let model = SecondViewControllerModel()
        model.delegate = self
        model.data = "New Value"
    }
    
    //初期化
    init(model: SecondViewControllerModel) {
        super.init(nibName: "SecondViewController", bundle: nil)
        self.model = model
        self.model.delegate = self
    }
    
    //ストーリーボードやXIBファイルを使用する場合は、このメソッドの実装が必要
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //データが変更されたとき、didSetから呼ばれる
    func dataHasUpdated() {
        print("dataの値が変更されました。")
    }
    
    //NavigationControllerを使って遷移する
    @IBAction func pushButton(_ sender: Any) {
        let model = ThirdViewControllerModel()
        let thirdViewController = ThirdViewController(model: model)
        self.navigationController?.pushViewController(thirdViewController,
                                                      animated: true)
    }
    
    //NavigationProtocolの関数を使って遷移する
    @IBAction func pushRootView(_ sender: Any) {
        
        let model = ThirdViewControllerModel()
        let thirdViewController = ThirdViewController(model: model)

        pushViewController(thirdViewController, animated: true)
    }
    
    //モーダルで遷移する
    @IBAction func pushPresent(_ sender: Any) {
        
        let model = ThirdViewControllerModel()
        let thirdViewController = ThirdViewController(model: model)
        thirdViewController.modalPresentationStyle = .overFullScreen
        self.present(thirdViewController, animated: true, completion: nil)
        
    }
    
}
