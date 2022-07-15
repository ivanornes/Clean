//
//  NumberFactory.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import Foundation
import Entities
import Presenters
import UseCases
import SwiftUIView

class NumberFactory {
    func makeNumberView() -> NumbersView {
        
        let viewModel = NumbersViewModel()
        let incrementNumberInteractor = IncrementNumberInteractor()
        let decrementNumberInteractor = DecrementNumberInteractor()
        let numberPresenter = NumberPresenter(numberView: viewModel)
        var number = Number(value: 0)

        let view = NumbersView(contentViewModel: viewModel)
        viewModel.increment = {
            number = incrementNumberInteractor.increment(number)
            numberPresenter.display(number)
        }
        viewModel.decrement = {
            number = decrementNumberInteractor.decrement(number)
            numberPresenter.display(number)
        }
        return view
    }
}
