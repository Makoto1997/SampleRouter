//
//  Router.swift
//  SampleRouter
//
//  Created by Makoto on 2021/05/02.
//

import UIKit

final class Router {
    
    static let shared: Router = .init()
      private init() {}
    
    private (set) var window: UIWindow?
    
    func showRoot(window: UIWindow?) {
        
        let vc = FirstViewController.makeFromStoryboard()
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        self.window = window
    }
    
    func showFirst(from: UIViewController) {
        let vc = FirstViewController.makeFromStoryboard()
        show(from: from, next: vc)
      }

      func showSecond(from: UIViewController) {
        let vc = SecondViewController.makeFromStoryboard()
        show(from: from, next: vc)
      }

      func showThird(from: UIViewController) {
        let vc = ThirdViewController.makeFromStoryboard()
        show(from: from, next: vc)
      }
}

private extension Router {
    
    func show(from: UIViewController, next: UIViewController, animated: Bool = true) {
        if let nav = from.navigationController {
            nav.pushViewController(next, animated: animated)
        } else {
            from.present(next, animated: animated, completion: nil)
        }
    }
}
