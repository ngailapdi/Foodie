//
//  PostImageViewController.swift
//  Foodie
//
//  Created by Ngài Lập Dị on 9/25/16.
//  Copyright © 2016 VNBuzz. All rights reserved.
//

import UIKit

class PostImageViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    /*@IBOutlet weak var imageToPost: UIImageView!
    @IBAction func chooseImage(_ sender: AnyObject) {
        var image = UIImagePickerController()
        //image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = true
        self.present(image, animated: false, completion: nil)
        
    }
    
    @IBAction func postImage(_ sender: AnyObject) {
        var post = PFObject(className: "Post")
        post["userID"]
    }*/
    
    @IBOutlet weak var imageToPost: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func chooseImage(_ sender: AnyObject) {
        var image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = true
        self.present(image, animated: false, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        self.dismiss(animated: false, completion: nil)
        imageToPost.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
