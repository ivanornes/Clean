//
//  NumberPresenter.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import Foundation

protocol NumberView {
    func display(_ number: String)
}

class SwiftUINumberPresenter {
    private let numberView: NumberView
    
    init(numberView: NumberView) {
        self.numberView = numberView
    }
    
    func display(_ number: Number) {
        numberView.display(number.description)
    }
}
