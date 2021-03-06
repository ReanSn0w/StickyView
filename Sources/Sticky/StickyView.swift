//
//  StickyView.swift
//  
//
//  Created by Дмитрий Папков on 01.03.2021.
//

import SwiftUI

struct StickyView<Content>: View where Content: View {
    var top: StickyOffset
    var content: () -> Content
    
    public init(
        top: StickyOffset = .none,
        content: @escaping () -> Content
    ) {
        self.top = top
        self.content = content
    }
    
    var body: some View {
        GeometryReader { g in
            VStack {
                Spacer()
                    .frame(
                        width: g.size.width,
                        height: top.offset)
                
                self.content()
            }
            .offset(y: g.frame(in: .global).minY - top.offset <= 0 ? 0 : -g.frame(in: .global).minY + top.offset)
            .frame(
                width: g.size.width,
                height: g.frame(in: .global).minY - top.offset <= 0 ? g.size.height : g.size.height + g.frame(in: .global).minY,
                alignment: .center)
        }
    }
}

struct StickyView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ScrollView {
            StickyView(top: .fixed(60)) {
                Color.red.overlay(Text("Fixed View"))
            }
            .aspectRatio(0.75, contentMode: .fit)
            
            Color.green.frame(height: 2000)
        }
        .navigationBarTitle(Text("abc"), displayMode: .inline)
        }
    }
}
