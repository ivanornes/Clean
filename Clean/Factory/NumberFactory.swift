//
//  NumberFactory.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import Foundation

class NumberFactory {
    func makeNumberView() -> ContentView {
        ContentView(contentViewModel: {
            let viewModel = ContentViewModel()
            let incrementNumberInteractor = IncrementNumberInteractor()
            let decrementNumberInteractor = DecrementNumberInteractor()
            let numberPresenter = SwiftUINumberPresenter(numberView: viewModel)
            var number = Number(value: 0)
            viewModel.increment = {
                number = incrementNumberInteractor.increment(number)
                numberPresenter.display(number)
            }
            viewModel.decrement = {
                number = decrementNumberInteractor.decrement(number)
                numberPresenter.display(number)
            }
            return viewModel
        }())
    }
}
