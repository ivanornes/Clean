//
//  IncrementNumberInteractorTests.swift
//  UseCasesTests
//
//  Created by Ivan Ornes on 16/7/22.
//

import XCTest
import Entities
import UseCases

class IncrementNumberInteractorTests: XCTestCase {

    func test_increment_increments() {
        let sut = makeSUT()
        let initial = Number(value: 0)
        
        let result = sut.increment(initial)
        
        XCTAssertEqual(result.value, 1)
    }


    // MARK: Helper

    func makeSUT() -> IncrementNumberInteractor {
        IncrementNumberInteractor()
    }
}
