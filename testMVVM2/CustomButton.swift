//
//  CustomButton.swift
//  testMVVM2
//
//  Created by 平野裕貴 on 2023/06/20.
//

import UIKit

@IBDesignable // Interface Builderでのプレビューを有効化
class CustomButton: UIButton {

    // Interface Builderから設定できるプロパティを定義
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }

    private func setupButton() {
        // 共通の設定はここで行います
    }
}
