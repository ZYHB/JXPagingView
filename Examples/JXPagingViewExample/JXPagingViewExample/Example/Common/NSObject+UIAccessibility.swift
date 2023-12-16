//
//  NSObject+UIAccessibility.swift
//  JXPagingViewExample
//
//  Created by zhuyuhui on 2023/12/16.
//  Copyright © 2023 jiaxin. All rights reserved.
//

import Foundation
import UIKit
extension NSObject {
    func setAccessibilityFocus(in view: Any?) {
        /// 当出现占据屏幕主要部分的新视图时，应用发布的通知。
        UIAccessibility.post(notification: .screenChanged, argument: view)
    }
}

/*
 swift 辅助功能将焦点设置为导航栏标题项目
 https://www.saoniuhuo.com/question/detail-2478926.html
 
 关于ios：UIAccessibilityLayoutChangedNotification和UIAccessibilityScreenChangedNotification之间的实际区别是什么？
 https://www.codenong.com/27797515/
 
 
https://developer.apple.com/documentation/uikit/accessibility/uiaccessibility

https://developer.apple.com/documentation/uikit/uiaccessibilitylayoutchangednotification

https://developer.apple.com/documentation/uikit/uiaccessibilityscreenchangednotification
 
 
 layoutChanged 当屏幕布局发生更改时，应用发布的通知。
 screenChanged 当出现占据屏幕主要部分的新视图时，应用发布的通知。

 */
