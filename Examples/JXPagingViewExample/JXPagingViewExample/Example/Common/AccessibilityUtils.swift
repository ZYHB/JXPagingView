//
//  AccessibilityUtils.swift
//  JXPagingViewExample
//
//  Created by zhuyuhui on 2023/12/16.
//  Copyright © 2023 jiaxin. All rights reserved.
//

import Foundation
import UIKit
class AccessibilityTransferView: UIView {
    // 定义闭包变量
    var didLoseFocusHandler: ((String) -> Void)?
    
    override func accessibilityElementDidLoseFocus() {
        print("accessibilityElementDidLoseFocus")
        didLoseFocusHandler?("Hello, World!")
    }
}
