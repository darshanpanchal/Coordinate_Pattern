//
//  Coordinator.swift
//  Coordinator_Pattern
//
//  Created by Darshan on 25/04/23.
//

import Foundation
import UIKit

protocol Coordinator{
    var childCoordinator:[Coordinator] {get set}
    var navigationViewController:UINavigationController {get set}
    func start()
}

class MainCoordinator:Coordinator{
    var childCoordinator: [Coordinator] = [Coordinator]()
    
    var navigationViewController: UINavigationController
    init(navigationViewController: UINavigationController) {
        self.navigationViewController = navigationViewController
    }
    func home(){
        let viewcontroller: HomeViewController = HomeViewController.instantiate()
        viewcontroller.mainCoordinator = self
        navigationViewController.pushViewController(viewcontroller, animated: false)
    }
    func start() {
        let viewcontroller: ViewController = ViewController.instantiate()
        viewcontroller.mainCoordinator = self
        navigationViewController.pushViewController(viewcontroller, animated: false)
    }
   
    func buyProduct(){
        let viewcontroller: BuyViewController = BuyViewController.instantiate()
        viewcontroller.mainCoordinator = self
        navigationViewController.pushViewController(viewcontroller, animated: false)
    }
    func createNewAccount(){
        let viewcontroller: CreateAccountViewController = CreateAccountViewController.instantiate()
        viewcontroller.mainCoordinator = self
        navigationViewController.pushViewController(viewcontroller, animated: false)
    }
}
