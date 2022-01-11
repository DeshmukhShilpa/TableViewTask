//
//  SecondViewController.swift
//  TableView
//
//  Created by Shilpa on 04/01/22.
//

import UIKit
protocol AddNumDelegate{
    func addNum(name: String, id: String, designation: String, salary: String)
    func addImage(img: UIImage)
//

}
class SecondViewController: UIViewController {
    @IBOutlet var nameTextfield: UITextField!
    @IBOutlet var idTextfield: UITextField!
    @IBOutlet var designationTextfield: UITextField!
    @IBOutlet var salaryTextfield: UITextField!
    
    @IBOutlet var image: UIImageView!
    
       var delegate: AddNumDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addphoto(_ sender: Any) {
        let vc2 = UIImagePickerController()
        vc2.sourceType = .photoLibrary
        vc2.delegate = self
        vc2.allowsEditing = true
        present(vc2, animated: true)
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if nameTextfield.text?.isEmpty == true || idTextfield.text?.isEmpty == true || designationTextfield.text?.isEmpty == true || salaryTextfield.text?.isEmpty == true || image.image == nil{
            return
        }
         
        //let textfield = textField.text
        delegate?.addNum(name: nameTextfield.text!, id: idTextfield.text!, designation: designationTextfield.text!, salary: salaryTextfield.text!)
        delegate?.addImage(img: image.image!)
        navigationController?.popViewController(animated: true)
    }
    

}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            self.image.image = image
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
//
