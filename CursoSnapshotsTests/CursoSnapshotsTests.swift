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
    emptyStateLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      emptyStateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      emptyStateLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }
}

class CursoSnapshotsTests: XCTestCase {
  
  func test_emptyState() {
    let sut = FeedViewController()
    
    assertSnapshot(matching: sut, as: .image(on: .iPhone8))
  }
}
