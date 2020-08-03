//
//  ImageViewController.swift
//  MCMS
//
//  Created by Student on 7/30/20.
//  Copyright © 2020 Morgan. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var creature: Creature!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.text = creature.name
       
    }
    

    

}
