//
//  ChangeColorViewController.swift
//  protocol & delegate Demo
//
//  Created by Kai on 2022/12/22.
//

import UIKit

class ChangeColorViewController: UIViewController {
    
    override func viewDidLoad() {        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func ChangeBackgroundColor(_ sender: Any) {
//        let colorController = UIColorPickerViewController()
//        colorController.delegate = self
//        present(colorController, animated: true)
//    }
    
    
}


extension ChangeColorViewController: UIColorPickerViewControllerDelegate {
    
    func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
        view.backgroundColor = color
    }
    
}
