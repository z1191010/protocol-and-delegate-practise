//
//  ViewController.swift
//  Demo
//
//  Created by Kai on 2022/12/19.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let urlString = "https://names.drycodes.com/2?nameOptions=boy_names&format=text&prefix=%E8%A6%AA%E6%84%9B%E7%9A%84"

    if let url = URL(string: urlString) {
        do {
            let data = try Data(contentsOf: url)
            if let name = String(data: data, encoding: .utf8){
                print(name)
            }
        } catch {
            print(error)
        }
        
    }
    
    
}

