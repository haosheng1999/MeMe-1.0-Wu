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
     @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var bottomText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        //set up text
        let memeTextAttributes:[String:Any] = [
            NSStrokeColorAttributeName: UIColor.blackColor,
            NSForegroundColorAttributeName: UIColor.whiteColor(),
            NSFontAttributeName: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
            NSStrokeWidthAttributeName: UIColor.clearColor(),
        
        topText.defaultTextAttributes = memeTextAttributes
      bottomText.defaultTextAttributes = memeTextAttributes
     
      
    }

    
    //dismisses the keyboard when return is pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true; }

    @IBAction func pickAnImage(_ sender: Any) {
        
        
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
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func pickAnImageFromCamera(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
        
        
    }

    
    }
    

