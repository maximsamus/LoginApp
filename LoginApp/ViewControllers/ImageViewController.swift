//
//  ImageViewController.swift
//  LoginApp
//
//  Created by Максим Самусь on 13.03.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView!
    
    var photo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: photo)
        photoImage.layer.cornerRadius = 20
    }
}
