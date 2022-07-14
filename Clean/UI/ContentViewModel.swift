//
//  ContentViewModel.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var number: String
    
    var increment: (()->Void)?
    var decrement: (()->Void)?
    
    init(number: String = "") {
        self.number = number
    }
}

extension ContentViewModel: NumberView {
    func display(_ number: String) {
        self.number = number
    }
}
