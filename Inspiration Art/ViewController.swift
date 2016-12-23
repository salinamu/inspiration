//
//  ViewController.swift
//  Inspiration Art
//
//  Created by Salina Mu on 12/20/16.
//  Copyright © 2016 Mu Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var artLabel: UILabel!
    @IBOutlet weak var art: UIImageView!
    @IBOutlet weak var imagePicked: UIImageView!
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        art.image = imageArray[0].pic
        artLabel.text = imageArray[0].caption
        imagePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var index:Int = 0
    
    @IBAction func nextButton(_ sender: AnyObject) {
        
        index += 1 
        
        if (index == imageArray.count){
            
            index = 0
        }
        
        art.image = imageArray[index].pic
        artLabel.text = imageArray[index].caption
    }
    
    @IBAction func cameraButton(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
            imagePicker.allowsEditing = false
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        imagePicked.image = image
        imageArray.append(Image(pic: image, caption: "Camera Photo"))
        index = imageArray.count-1
        art.image = imageArray[index].pic
        artLabel.text = imageArray[index].caption
        self.dismiss(animated: true, completion: nil);
    }

}

