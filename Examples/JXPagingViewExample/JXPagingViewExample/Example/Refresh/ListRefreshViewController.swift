//
//  ListRefreshViewController.swift
//  JXPagingView
//
//  Created by jiaxin on 2018/8/28.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit
import JXPagingView
import JXSegmentedView

class ListRefreshViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.isNeedHeader = true
            
       // 该View失去焦点后，重置底部控制器的焦点
//        self.fouscView.didLoseFocusHandler = { message in
//            print("Received message: \(message)")
//            if let vc = self.pagingView.listContainerView.validListDict[self.segmentedView.selectedIndex] {
//                self.setAccessibilityFocus(in: vc)
//            }
//        }
    }
    
    override func preferredPagingView() -> JXPagingView {
        return JXPagingListRefreshView(delegate: self, listContainerType: .scrollView)
    }

    //用于测试每次点击segment切换，都触发子列表的下拉刷新
/*
    override func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
        super.segmentedView(segmentedView, didSelectedItemAt: index)

        guard let list = pagingView.validListDict[index] as? ListViewController else {
            return
        }
        list.tableView.mj_header?.beginRefreshing()
    }
 */
//    
//    override func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
////        self.setAccessibilityFocus(in: self.view)
//
//        /// 暂时暂停辅助应用操作的通知。
//        UIAccessibility.post(notification: .pauseAssistiveTechnology, argument: UIAccessibility.AssistiveTechnologyIdentifier.notificationSwitchControl)
//        /// 临时恢复辅助应用操作的通知。
//        UIAccessibility.post(notification: .resumeAssistiveTechnology, argument: UIAccessibility.AssistiveTechnologyIdentifier.notificationSwitchControl)
//
//    }
    
//    override func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
////        if let vc = self.pagingView.listContainerView.validListDict[index] {
//////            self.setAccessibilityFocus(in: vc)
////            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
////                self?.setAccessibilityFocus(in: vc)
////            }
////        }
//    }
}
