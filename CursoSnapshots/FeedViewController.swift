//
//  FeedViewController.swift
//  CursoSnapshots
//
//  Created by Mario Alberto Barragán Espinosa on 03/04/22.
//

import UIKit

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
