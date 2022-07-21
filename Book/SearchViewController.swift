//
//  SearchViewController.swift
//  Book
//
//  Created by 나지운 on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    static let identifier = "SearchViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(closeButtonClicked))
    }
    
    @objc func closeButtonClicked() {
        self.dismiss(animated: true)
    }
}
