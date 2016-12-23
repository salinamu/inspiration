//
//  images.swift
//  Inspiration Art
//
//  Created by Salina Mu on 12/20/16.
//  Copyright © 2016 Mu Studios. All rights reserved.
//

import Foundation
import UIKit

class Image{
    var pic: UIImage
    var caption: String


    init (pic: UIImage, caption: String) {
        self.pic = pic
        self.caption = caption
    }
}

var imageArray:[Image] = [
    Image(pic: UIImage(named: "Training1.png")!, caption: "A Star is Born"),
    Image(pic: UIImage(named: "Training2.png")!, caption: "Mr. Button, Best Sidekick Ever!"),
    Image(pic: UIImage(named: "Training3.png")!, caption: "Working on my Handwriting"),
    Image(pic: UIImage(named: "Training4.png")!, caption: "Progress!"),
    Image(pic: UIImage(named: "Training5.png")!, caption: "I Think We’re Getting There…."),
    Image(pic: UIImage(named: "Training6.png")!, caption: "It’s the Little Things."),
    Image(pic: UIImage(named: "Training7.png")!, caption: "Presentation Perfect!"),
    Image(pic: UIImage(named: "Training8.png")!, caption: "Presentation Accepted.")]
