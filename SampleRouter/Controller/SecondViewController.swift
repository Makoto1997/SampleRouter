//
//  SecondViewController.swift
//  SampleRouter
//
//  Created by Makoto on 2021/05/02.
//

import UIKit

final class SecondViewController: UIViewController {

    static func makeFromStoryboard() -> SecondViewController {
        
        let vc = UIStoryboard.secondViewController
        return vc
      }
    
    @IBAction func button(_ sender: Any) {
        
        Router.shared.showThird(from: self)
    }
}
