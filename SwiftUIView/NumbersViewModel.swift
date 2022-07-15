//
//  NumbersViewModel.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import Foundation
import Presenters

public class NumbersViewModel: ObservableObject {
    @Published var number: String
    
    public var increment: (()->Void)?
    public var decrement: (()->Void)?
    
    public init(number: String = "") {
        self.number = number
    }
}

extension NumbersViewModel: NumberView {
    
    public func display(_ viewModel: NumberViewModel) {
        self.number = viewModel.number
    }
}
