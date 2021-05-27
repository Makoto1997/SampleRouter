//
//  ThirdViewController.swift
//  SampleRouter
//
//  Created by Makoto on 2021/05/02.
//

import UIKit

final class ThirdViewController: UIViewController {

    static func makeFromStoryboard() -> ThirdViewController {
        
            let vc = UIStoryboard.thirdViewController
            return vc
          }

    @IBAction func button(_ sender: Any) {
        
        Router.shared.showFirst(from: self)
    }
}
