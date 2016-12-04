


//
//  FirstCell.swift
//  huile-swift
//
//  Created by  周毅 on 16/5/3.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class FirstCell: UIView {
    
    var itemButtons = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        for _ in 0..<8{
//            let button = UIButton();
//            button.setImage(UIImage(named: "dianyingyuan"), forState: .Normal)
//            addSubview(button)
//            
//            itemButtons += [button]
//        }
        
        let button = UIButton()
        button.setImage(UIImage(named: "banner"), for: UIControlState())
        self.itemButtons = button
        addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 200)
        
    }
  
    
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
