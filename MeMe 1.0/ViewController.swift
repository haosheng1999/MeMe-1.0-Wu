//
//  ViewController.swift
//  MeMe 1.0
//
//  Created by hao sheng wu on 1/25/18.
//  Copyright © 2018 Hao Sheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {

    @IBOutlet weak var imagePickerView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  

    @IBAction func pickAnImage(_ sender: Any) {
        let pickController = UIImagePickerController()
        self.present(pickController, animated: true, completion: nil)
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType =  UIImagePickerControllerSourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
        
}
    
    func imagePickerController( _ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[String : Any]) {
        
        if let image = info[ UIImagePickerControllerOriginalImage] as? UIImage {
            imagePickerView.image = image
            
        }
        self.dismiss(animated: true, completion: nil)
    }
    }
    

