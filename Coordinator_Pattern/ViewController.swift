//
//  ViewController.swift
//  Coordinator_Pattern
//
//  Created by Darshan on 25/04/23.
//

import UIKit

class ViewController: UIViewController,Storyboarded {

    var mainCoordinator:MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buySelector(_ sender:UIButton){
        mainCoordinator?.buyProduct()
    }
    @IBAction func createAccountSelector(_ sender:UIButton){
        mainCoordinator?.createNewAccount()
    }
}

