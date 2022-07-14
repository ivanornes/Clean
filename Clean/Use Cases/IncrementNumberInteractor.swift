//
//  IncrementNumberInteractor.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import Foundation

class IncrementNumberInteractor {
    func increment(_ number: Number) -> Number {
        Number(value: number.value + 1)
    }
}
