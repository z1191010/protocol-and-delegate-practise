//
//  ColorViewController.swift
//  protocol & delegate Demo
//
//  Created by Kai on 2022/12/22.
//

import UIKit

class ColorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ChangeBackgroundColor(_ sender: Any) {
        let colorController = UIColorPickerViewController()
            colorController.delegate = self
            present(colorController, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension ColorViewController: UIColorPickerViewControllerDelegate{
    
    func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
        view.backgroundColor = color
    }
    
}
