//
//  NumberView.swift
//  Presenters
//
//  Created by Ivan Ornes on 15/7/22.
//

import Foundation

public struct NumberViewModel {
    public let number: String
    
    init(number: String) {
        self.number = number
    }
}

public protocol NumberView {
    func display(_ viewModel: NumberViewModel)
}
