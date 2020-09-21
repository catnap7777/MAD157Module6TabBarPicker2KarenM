//
//  ViewController.swift
//  MAD157Module6TabBarPicker2KarenM
//
//  Created by Karen Mathes on 9/21/20.
//  Copyright © 2020 TygerMatrix Software. All rights reserved.
//


//.. create an alert controller that displays two buttons and responds differently to each button

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResult: UILabel!
    @IBOutlet var buttonObj: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelResult.numberOfLines = 0
        
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
        
        //.. the alert
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert)
        
        //.. alert action for each "button" on the alert
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            self.labelResult.text = "OK"
            self.labelResult.textColor = UIColor.blue
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { action -> Void in
            self.labelResult.text = "Cancel"
            self.labelResult.textColor = UIColor.black
        })
        
        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive, handler: { action -> Void in
            self.labelResult.text = "Destroy"
            self.labelResult.textColor = UIColor.red
        })
        
        //.. add the "buttons" to the alert
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        
        //.. display the alert
        self.present(alert, animated: true , completion: nil )

      
    }
    
}

