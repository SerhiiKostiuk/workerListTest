//
//  ViewController.swift
//  workerListTest
//
//  Created by Сергій Костюк on 7/28/17.
//  Copyright © 2017 Сергій Костюк. All rights reserved.
//

import UIKit

class WorkersListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let namesArray = ["Иван", "Петр", "Владимир", "Олександр"]
    let vocationArray = ["Менеджер", "Продавец", "Касир", "Бухгалтер"]
    var namesAndVocationArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for i in 0..<100 {
            print(i)
            
            let randomNamesIndex = Int(arc4random_uniform(UInt32(namesArray.count)))
            let randomVocationIndex = Int(arc4random_uniform(UInt32(namesArray.count)))
            
            let randomName = namesArray[randomNamesIndex]
            let randomVocation = vocationArray[randomVocationIndex]
            
            let nameAndVocationString = String(format: "%@ - %@", randomName, randomVocation)
            

            namesAndVocationArray.append(nameAndVocationString)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesAndVocationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkerTableViewCell") as! WorkerTableViewCell
        
        cell.fillCell(string: namesAndVocationArray[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let identifier = "WorkerViewController"
        
        let workerVC = storyboard.instantiateViewController(withIdentifier: identifier) as! WorkerViewController
        
        workerVC.workerNameAndVocationString = namesAndVocationArray[indexPath.item]
        self.navigationController?.pushViewController(workerVC, animated: true)

//        workerVC.fillWith(string: namesAndVocationArray[indexPath.item])
        
    }
    
    
}

