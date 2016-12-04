//
//  H&MViewController.swift
//  huile-swift
//
//  Created by  周毅 on 16/4/6.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class H_MViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

            
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchBar = UISearchBar.init()
        searchBar.placeholder = "搜索"
        self.navigationItem.titleView = searchBar
      
        let rightItem = UIBarButtonItem(image:UIImage(named: "scan")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal) , style: UIBarButtonItemStyle.plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = rightItem
        
        let leftItem = UIButton(type: .custom)
        leftItem.frame = CGRect(x: 0, y: 0, width: 40, height: 35)
        leftItem.setTitle("武汉", for: UIControlState())
        leftItem.setImage(UIImage(named: "Down arrow"), for: UIControlState())
        leftItem.titleEdgeInsets = UIEdgeInsetsMake(0, -35, 0, 0)
        leftItem.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        leftItem.imageEdgeInsets = UIEdgeInsetsMake(0, 30, 0, 0)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: leftItem)
        
        
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

}
