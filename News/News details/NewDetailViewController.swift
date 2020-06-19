//
//  NewDetailViewController.swift
//  News
//
//  Created by Tiko on 6/19/20.
//  Copyright © 2020 Tiko. All rights reserved.
//

import UIKit

class NewDetailViewController: UIViewController {
    
    @IBOutlet private weak var imageVIew: UIImageView!
    
    var flowerImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageVIew.image = self.flowerImage
    }
}
