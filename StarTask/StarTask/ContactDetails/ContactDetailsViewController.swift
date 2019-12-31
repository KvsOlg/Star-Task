//
//  ContactDetailsViewController.swift
//  StarTask
//
//  Created by Oleh Kvasha on 12/29/19.
//  Copyright © 2019 Kvasha Oleh. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //create button item on navigation bar
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(addTapped))
        
        nameLabel.text = contact?.name
        surnameLabel.text = contact?.surname
        phoneNumberLabel.text = contact?.phoneNumber
    }
    
    
    // action for Edit button: go to edit view
    /*
    @IBAction func addTapped(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let createContactViewController = storyboard.instantiateViewController(withIdentifier: "CreateContactViewController") as! CreateContactViewController
        createContactViewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(createContactViewController, animated: true, completion: nil)
    }
 */
    
}

