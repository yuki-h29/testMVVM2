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

    }

    //初期化
    init(model: ThirdViewControllerModel) {
        self.model = model
        super.init(nibName: "ThirdViewController", bundle: nil)
        //NavigationItemを非表示にする
        self.navigationItem.hidesBackButton = true

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
