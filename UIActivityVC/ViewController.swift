//
//  ViewController.swift
//  UIActivityVC
//
//  Created by Алексей Пархоменко on 19/08/2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let arrayOfSomething = [#imageLiteral(resourceName: "IMG_3C926EB4F345-2"), #imageLiteral(resourceName: "IMG_3C926EB4F345-1")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .gray
    }

    @IBAction func actionButtonTapped(_ sender: UIBarButtonItem) {
        print("123")
        
        let shareController = UIActivityViewController(activityItems: arrayOfSomething, applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("It is done!")
            }
        }
        
        shareController.popoverPresentationController?.barButtonItem = sender
        shareController.popoverPresentationController?.permittedArrowDirections = .any
        
        present(shareController, animated: true, completion: nil)
    }
    
}

