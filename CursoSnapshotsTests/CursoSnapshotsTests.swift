//
//  CursoSnapshotsTests.swift
//  CursoSnapshotsTests
//
//  Created by Mario Alberto Barragán Espinosa on 06/03/22.
//

import XCTest
@testable import CursoSnapshots
import SnapshotTesting

class CursoSnapshotsTests: XCTestCase {
  
  func test_emptyScreen() {
    let sut = ViewController()
    
    assertSnapshot(matching: sut, as: .image(on: .iPhone8))
  }
}
