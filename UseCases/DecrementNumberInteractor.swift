//
//  DecrementNumberInteractor.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import Foundation
import Entities

public class DecrementNumberInteractor {
    public init() {}
    
    public func decrement(_ number: Number) -> Number {
        Number(value: number.value - 1)
    }
}
