//
//  NSLayoutConstraintExtensions.swift
//  SimpleGraphView
//
//  Created by aryzae on 2018/07/27.
//  Copyright © 2018 aryzae. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    
    func changeMultiplier(to newValue: CGFloat) {
        // multiplierのみ変更
        let newContstraint = NSLayoutConstraint(item: firstItem!,
                                                attribute: firstAttribute,
                                                relatedBy: relation,
                                                toItem: secondItem,
                                                attribute: secondAttribute,
                                                multiplier: newValue,
                                                constant: constant)
        newContstraint.priority = self.priority
        // 適用
        NSLayoutConstraint.deactivate([self])
        NSLayoutConstraint.activate([newContstraint])
    }
    
    func changeMultiplier(to newValue: Float) {
        changeMultiplier(to: CGFloat(newValue))
    }
}
