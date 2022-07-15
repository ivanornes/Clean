//
//  NumbersView.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import SwiftUI

public struct NumbersView: View {
    
    @ObservedObject public var contentViewModel:  NumbersViewModel
    
    public init(contentViewModel:  NumbersViewModel) {
        self.contentViewModel = contentViewModel
    }
    
    public var body: some View {
        HStack {
            Button("-") {
                contentViewModel.decrement?()
            }
            Text(contentViewModel.number).padding()
            Button("+") {
                contentViewModel.increment?()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contentViewModel: .init())
    }
}
