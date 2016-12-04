//
//  MineHeaderView.swift
//  huile-swift
//
//  Created by  周毅 on 16/4/6.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class MineHeaderView: UIView {
    
    var icon:UIImageView!
    
    override init(frame: CGRect) {
        
    
      super.init(frame: frame)
        
        let headerView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT/5))
        // headerView.backgroundColor = UIColor.orangeColor()
        headerView.image = UIImage(named: "beijing")
        headerView.isUserInteractionEnabled = true
        self.addSubview(headerView)
        
        self.icon = UIImageView.init(frame:CGRect(x: 120, y: 30, width: 60, height: 60))
        self.icon.backgroundColor = UIColor.gray
        headerView .addSubview(icon)
        self.icon.layer.cornerRadius = 30
        self.icon.clipsToBounds = true
        self.icon.isUserInteractionEnabled = true
    
        let x = icon.frame.maxX
        let y = icon.frame.midY
        
        let label = UILabel.init(frame:CGRect(x: x + 10, y: y - 13, width: 80, height: 26))
        // label.backgroundColor = UIColor .grayColor()
        // label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.white
        label.text = "Aigean"
        
        headerView .addSubview(label)
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    
    
}
