//
//  WorkerViewController.swift
//  workerListTest
//
//  Created by Сергій Костюк on 7/31/17.
//  Copyright © 2017 Сергій Костюк. All rights reserved.
//

import UIKit

class WorkerViewController: UIViewController {
    
    @IBOutlet weak var workerNameAndVocationLabel: UILabel!
    
    var workerNameAndVocationString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false

        let back = UIBarButtonItem.init(image: UIImage.init(named: "back_button"), style: .plain, target: self, action: #selector(WorkerViewController.back))
        
         workerNameAndVocationLabel.text = workerNameAndVocationString
        
        self.navigationItem.leftBarButtonItem = back
    }
    
    func back () {
        self.navigationController?.popViewController(animated: true)
    }

}
