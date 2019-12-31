//
//  CreateContactViewController.swift
//  StarTask
//
//  Created by Oleh Kvasha on 12/28/19.
//  Copyright © 2019 Kvasha Oleh. All rights reserved.
//

import UIKit


protocol UpdateContactListDelegate: AnyObject {
    func updateContactList(with contact: Contact)
}

class CreateContactViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    var personContact : Contact?
    weak var delegate : UpdateContactListDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cancelButton.layer.cornerRadius = cancelButton.frame.height / 2
        saveButton.layer.cornerRadius = saveButton.frame.height / 2

    }
    
    
    @IBAction func saveAndClose(_ sender: UIButton) {

        if phoneNumberTextField.text?.count != 0, nameTextField.text?.count != 0 {
            guard let name = nameTextField.text else {return}
            guard let number = phoneNumberTextField.text else {return}

            personContact = Contact(name: name, surname: surnameTextField.text, phoneNumber: number)
            guard let contact = personContact else {return}
            delegate?.updateContactList(with: contact)
            self.dismiss(animated: true)
        } else {
            showErrorAlert()
            nameTextField.placeholder = "Enter your name correct"
            phoneNumberTextField.placeholder = "Enter your number"
        }
        
    }
    
    // custom alert method (from Ann)
    public func showErrorAlert() {
        let alert = UIAlertController(title: "Enter your name and phone number", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style {
            case .default:
                break
            case .cancel:
                break
            case .destructive:
                break
            @unknown default:
                break
            }
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}


