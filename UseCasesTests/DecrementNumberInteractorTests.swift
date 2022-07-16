//
//  DecrementNumberInteractorTests.swift
//  UseCasesTests
//
//  Created by Ivan Ornes on 16/7/22.
//

import XCTest
import Entities
import UseCases

class DecrementNumberInteractorTests: XCTestCase {

    func test_decrement_decrements() {
        let sut = makeSUT()
        let initial = Number(value: 1)
        
        let result = sut.decrement(initial)
        
        XCTAssertEqual(result.value, 0)
    }


    // MARK: Helper

    func makeSUT() -> DecrementNumberInteractor {
        DecrementNumberInteractor()
    }
}
