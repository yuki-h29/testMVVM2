//
//  SecondViewController.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/13.
//

// ViewController.swift
import UIKit

class SecondViewController: UIViewController ,
                            NavigationProtocol{
    
    var model: SecondViewControllerModel!
    var personDat: [Person]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // データ更新要求
        model.updateData()
        
        // 新たなモデルを生成し、データを更新
        let model = SecondViewControllerModel()
        model.delegate = self
        model.data = "New Value"
        
    }
    
    init(model: SecondViewControllerModel) {
        super.init(nibName: nil, bundle: nil)
        self.model = model
        self.model.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //ThirdViewControllerにVC+ModelDelegate内の関数で遷移する
    @IBAction func pushNavigationButton(_ sender: Any) {
        // self.pushNextView() MVVMとしては↓で呼び出すのが正しい
        model.requestViewTransitionNavigation()
    }
    
    //ThirdviewControllerにCommonクラスを使って遷移する
    @IBAction func pudhRootViewButton(_ sender: Any) {
        let model = ThirdViewControllerModel()
        let ThirdViewController = ThirdViewController(model: model)
        self.pushViewController(ThirdViewController, animated: true)
    }
    
    //モーダルで遷移する
    @IBAction func pushPresentButton(_ sender: Any) {
        //self.modalNextView() MVVMとしては↓で呼び出すのが正しい
        model.requestViewTransitionModel()
    }
    
    @IBAction func pushFourthViewButton(_ sender: Any) {
        
        let people = [Person(name: "John", age: 30), Person(name: "Emma", age: 25)]
        let model = FourthViewControllerModel()
        let FourthViewController = FourthViewController(model: model,people: people)
        self.pushViewController(FourthViewController, animated: true)
        
    }
    
}
