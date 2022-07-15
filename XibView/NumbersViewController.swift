//
//  NumbersViewController.swift
//  XibView
//
//  Created by Ivan Ornes on 15/7/22.
//

import UIKit
import Presenters

public final class NumbersViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    public var increment: (()->Void)?
    public var decrement: (()->Void)?
    
    @IBAction func minusTap(_ sender: Any) {
        decrement?()
    }
    
    @IBAction func plusTap(_ sender: Any) {
        increment?()
    }
}

extension NumbersViewController: NumberView {
    public func display(_ viewModel: NumberViewModel) {
        numberLabel.text = viewModel.number
    }
}
