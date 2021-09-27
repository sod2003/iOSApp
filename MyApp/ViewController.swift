//
//  ViewController.swift
//  MyApp
//
//  Created by Sean O'Dowd on 9/16/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var PhotoLibraryImagePicker1: UIImagePickerController!
    var CameraImagePicker2: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    @IBAction func photoClick(_ sender: UIButton) {
        
        // Access Photo Library
        PhotoLibraryImagePicker1 = UIImagePickerController()
        
        PhotoLibraryImagePicker1.delegate = self
        PhotoLibraryImagePicker1.sourceType = .photoLibrary
        PhotoLibraryImagePicker1.allowsEditing = true
        
        self.present(PhotoLibraryImagePicker1, animated: true, completion: nil)
        
    }
    
    @IBAction func cameraClick(_ sender: UIButton) {
        
        // Access Camera
        if (UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera)) {
            CameraImagePicker2 = UIImagePickerController()
            
            CameraImagePicker2.delegate = self
            CameraImagePicker2.sourceType = .camera
            CameraImagePicker2.cameraDevice = .rear
            CameraImagePicker2.allowsEditing = false
            
            self.present(CameraImagePicker2, animated: true, completion: nil)
    
        } else {
            print("Camera not found")
        }
    }
    
    // Implementing UIImagePickerControllerDelegate protocol methods
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if picker == PhotoLibraryImagePicker1 {
            print("image info --> \(info)")
            
            let image1 = info [.editedImage] as! UIImage
            iv1.image = image1
            self.dismiss(animated: true, completion: nil)
            
        } else {
            print("image info --> \(info)")
            
            let image2 = info [.originalImage] as! UIImage
            iv1.image = image2
            self.dismiss(animated: true, completion: nil)
        }
    }
}
