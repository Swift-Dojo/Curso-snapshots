//
//  CursoSnapshotsTests.swift
//  CursoSnapshotsTests
//
//  Created by Mario Alberto Barragán Espinosa on 06/03/22.
//

import XCTest
@testable import CursoSnapshots

class CursoSnapshotsTests: XCTestCase {
  
  func test_emptyState() {
    let sut = FeedViewController()
        
    assert(sut, mode: .light, device: .iPhone8)
    assert(sut, mode: .dark, device: .iPhone8)
  }
}
