//
//  PhotoViewController.swift
//  protocol & delegate Demo
//
//  Created by Kai on 2022/12/21.
//

import UIKit

class PhotoViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func selectPhotoOrCamera(_ sender: Any) {
        let alert = UIAlertController(title: "List", message: "What do you want to do?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Cancle", style: .cancel))
        present(alert, animated: true)
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let libraryAlert = UIAlertAction(title: "SelectPhoto", style: .default){_ in
                let libraryController = UIImagePickerController()
                libraryController.sourceType = .photoLibrary
                libraryController.delegate = self
                self.present(libraryController, animated: true, completion: nil)
            }
        alert.addAction(libraryAlert)
        }
       if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraAlert = UIAlertAction(title: "Camera", style: .default) { _ in
                let cameraController = UIImagePickerController()
                cameraController.sourceType = .camera
                cameraController.delegate = self
                self.present(cameraController, animated: true)
            }
        alert.addAction(cameraAlert)
        }
    }
}

extension PhotoViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        imageView.image = info[.originalImage] as? UIImage
        dismiss(animated: true)
    }
}
