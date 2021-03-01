//
//  View+Ext.swift
//  
//
//  Created by Дмитрий Папков on 01.03.2021.
//

import SwiftUI

public extension View {
    func stickyView(enabled: Bool, top: StickyOffset = .none) -> some View {
        Group {
            if enabled {
                StickyView(top: top) { self }
            } else {
                self
            }
        }
    }
}
