//
//  ContentView.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel: ContentViewModel
    
    var body: some View {
        HStack {
            Button("+") {
                contentViewModel.increment?()
            }
            Text(contentViewModel.number).padding()
            Button("-") {
                contentViewModel.decrement?()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contentViewModel: .init())
    }
}
