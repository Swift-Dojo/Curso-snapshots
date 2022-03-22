//
//  CursoSnapshotsTests.swift
//  CursoSnapshotsTests
//
//  Created by Mario Alberto Barragán Espinosa on 06/03/22.
//

import XCTest
@testable import CursoSnapshots
import SnapshotTesting

class FeedViewController: UIViewController {
  
  private lazy var emptyStateLabel: UILabel = {
    let label = UILabel()
    label.text = "Unable to get feed.\n Come again later"
    label.textColor = UIColor(named: "fontColor")!
    label.numberOfLines = 0
    label.font = UIFont(name: "Helvetica Neue Bold", size: 24.0)
    return label
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor(named: "background")!
    view.addSubview(emptyStateLabel)
    emptyStateLabel.center(inView: view)
  }
}

class CursoSnapshotsTests: XCTestCase {
  
  func test_emptyState_light() {
    let sut = FeedViewController()
    
    sut.overrideUserInterfaceStyle = .light
    
    assertSnapshot(matching: sut, as: .image(on: .iPhone8))
  }
  
  func test_emptyState_dark() {
    let sut = FeedViewController()
    
    sut.overrideUserInterfaceStyle = .dark
    
    assertSnapshot(matching: sut, as: .image(on: .iPhone8))
  }
}
