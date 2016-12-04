//
//  NavigationViewController.swift
//  huile-swift
//
//  Created by  周毅 on 16/4/5.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = UIColor.orange
      
        
        
        
        
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
       
        if self.viewControllers.count > 0{
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "sousuoye" )?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), style: UIBarButtonItemStyle.plain, target: self, action: "back")
             self.navigationBar.barTintColor = UIColor.white
            
        }
         super.pushViewController(viewController, animated: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func back(){
        [self .popViewController(animated: true)]
        
    }
    

   
}
