//
//  UserCenterNavigationView.swift
//  Iris.iOS
//
//  Created by Xueliang Chen on 5/28/19.
//  Copyright © 2019 Conceptual. All rights reserved.
//

import UIKit

class UserCenterNavigationView: XibUIView {
    
    private var isInitialized = false

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func layoutSubviews() {
        super.layoutSubviews()
        
        if(!isInitialized){
            
            isInitialized = true
        }
    }
}
