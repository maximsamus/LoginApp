//
//  ImageViewController.swift
//  LoginApp
//
//  Created by Максим Самусь on 13.03.2022.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var photoImage: UIImageView!
    
    var photo: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage = UIImageView(image: photo)
    }
    
    
}
