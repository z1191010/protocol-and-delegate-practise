//
//  DirectoryViewController.swift
//  protocol & delegate Demo
//
//  Created by Kai on 2022/12/22.
//

import UIKit
import ContactsUI

class DirectoryViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openDirectory(_ sender: Any) {
        let directoryController = CNContactPickerViewController()
        directoryController.delegate = self
        present(directoryController, animated: true)
    }
}

extension DirectoryViewController: CNContactPickerDelegate {

    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        print(contact.givenName)
        if let phoneNumber = contact.phoneNumbers.first?.value{
            print(phoneNumber.stringValue)
            nameLabel.text = contact.givenName
            phoneLabel.text = phoneNumber.stringValue
        }
    }
}

