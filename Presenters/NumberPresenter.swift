//
//  NumberPresenter.swift
//  Presenters
//
//  Created by Ivan Ornes on 15/7/22.
//

import Foundation
import Entities

public class NumberPresenter {
    private let numberView: NumberView
    
    public init(numberView: NumberView) {
        self.numberView = numberView
    }
    
    public func display(_ number: Number) {
        numberView.display(.init(number: number.description))
    }
}


extension Number: CustomStringConvertible {
    public var description: String { "\(value)" }
}
