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
import XibView
import SwiftUI

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
    
    func makeXibNumberView() -> XibNumberView {
        let viewController = NumbersViewController(
            nibName: "NumbersViewController",
            bundle: Bundle(for:NumbersViewController.self))
        
        let incrementNumberInteractor = IncrementNumberInteractor()
        let decrementNumberInteractor = DecrementNumberInteractor()
        let numberPresenter = NumberPresenter(numberView: viewController)
        var number = Number(value: 0)
        viewController.increment = {
            number = incrementNumberInteractor.increment(number)
            numberPresenter.display(number)
        }
        viewController.decrement = {
            number = decrementNumberInteractor.decrement(number)
            numberPresenter.display(number)
        }
        return XibNumberView(viewController: viewController)
    }
    
    final class XibNumberView: UIViewControllerRepresentable {
        typealias UIViewControllerType = NumbersViewController
        private let viewController: NumbersViewController
        
        init(viewController: NumbersViewController) {
            self.viewController = viewController
        }
        
        func makeUIViewController(context: Context) -> NumbersViewController {
            viewController
        }
        
        func updateUIViewController(_ uiViewController: NumbersViewController, context: Context) {
        }
    }
}
