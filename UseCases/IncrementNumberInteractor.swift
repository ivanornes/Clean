//
//  IncrementNumberInteractor.swift
//  Clean
//
//  Created by Ivan Ornes on 14/7/22.
//

import Foundation
import Entities

public class IncrementNumberInteractor {
    public init() {}
    
    public func increment(_ number: Number) -> Number {
        Number(value: number.value + 1)
    }
}
