//
//  FourthViewController.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/29.
//

import UIKit

class FourthViewController: UIViewController ,
                            NavigationProtocol{
    
    var model: FourthViewControllerModel!
    var peopleData: [Person]?
    
   
    
    init(model: FourthViewControllerModel,people: [Person]) {
        super.init(nibName: nil, bundle: nil)
        self.model = model
        self.model.delegate = self
        self.peopleData = people
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let people = peopleData {
            var text = ""
            for person in people {
                text += "Name: \(person.name), Age: \(person.age)\n"
            }
            textView.text = text
        }
    }
}
