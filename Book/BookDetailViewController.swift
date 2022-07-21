//
//  BookDetailViewController.swift
//  Book
//
//  Created by 나지운 on 2022/07/21.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    static let identifier = "BookDetailViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func webSearchButtonClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "WebSearch", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: WebSearchViewController.identifier) as! WebSearchViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
