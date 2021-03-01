//
//  StickyOffset.swift
//  
//
//  Created by Дмитрий Папков on 01.03.2021.
//

import UIKit

public enum StickyOffset {
    case safeArea
    case fixed(CGFloat)
    case none
    
    var offset: CGFloat {
        switch self {
        case .safeArea:
            return UIApplication.shared.windows.first { $0.isKeyWindow }?.safeAreaInsets.top ?? 0
        case .fixed(let offset):
            return offset
        case .none:
            return 0
        }
    }
}
