//
//  FirstViewController.swift
//  SampleRouter
//
//  Created by Makoto on 2021/05/01.
//

import UIKit

final class FirstViewController: UIViewController {
    
    static func makeFromStoryboard() -> FirstViewController {
        
        let vc = UIStoryboard.firstViewController
        return vc
      }


    @IBAction func button(_ sender: Any) {

        Router.shared.showSecond(from: self)
    }
}

