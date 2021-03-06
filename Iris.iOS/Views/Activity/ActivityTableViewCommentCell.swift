//
//  ActivityCollectionViewCell.swift
//  Iris.iOS
//
//  Created by Xueliang Chen on 5/21/19.
//  Copyright © 2019 Conceptual. All rights reserved.
//

import UIKit

class ActivityTableViewCommentCell: UITableViewCell {

    @IBOutlet weak var deviationTitleLabel: UILabel!
    
    @IBOutlet weak var userAvatarImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    @IBOutlet weak var notificationTypeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgroundContainerView: UIView!
    
    @IBOutlet weak var dialogTailImageView: UIImageView!
    @IBOutlet weak var dialogTailContainerView: UIView!
    
    var isInitialized:Bool = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if(!isInitialized){
            userAvatarImageView.layer.cornerRadius = 15.0
            userAvatarImageView.layer.masksToBounds = true
            
            isInitialized = true
        }
    }
    
    public func setMask(){
        let topMask = UIView()
        topMask.frame = CGRect(x: 0, y: 0, width: backgroundContainerView.bounds.size.width, height: backgroundContainerView.bounds.size.height - 20)
        topMask.layer.cornerRadius = 8.0
        topMask.backgroundColor = .black
        backgroundContainerView.addSubview(topMask)
        backgroundContainerView.mask = topMask
        
        let bottomMask = UIImageView(image: UIImage(named: "dialog-tail"))
        bottomMask.frame = CGRect(x: 20, y: dialogTailContainerView.frame.height - 20, width: 20, height: 20)
        dialogTailContainerView.addSubview(bottomMask)
        dialogTailContainerView.mask = bottomMask
    }
    
    public func setBlur(){
        let ciImage = CIImage(image: UIImage(named: "activity-ahri-1")!)
        
        let blurFilter = CIFilter(name: "CIGaussianBlur")
        blurFilter?.setValue(ciImage, forKey: "inputImage")
        blurFilter?.setValue("10.0", forKey: "inputRadius")
        
        let resultImage = blurFilter?.value(forKey: "outputImage") as? CIImage
        backgroundImageView.image = UIImage(ciImage: resultImage!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
