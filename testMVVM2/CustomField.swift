//
//  CustomField.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/13.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 1.0
    }
}


class CustomLabel: UILabel {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 1.0
    }
}
