//
//  TabBarViewController.swift
//  huile-swift
//
//  Created by  周毅 on 16/4/5.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    var HomeVC = HomeViewController()
    var MerchantVC = MerchantViewController()
    var messageVC = MessageViewController()
    var mineVC = MineViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 首页--Home
        let homeNav:UINavigationController =  NavigationViewController(rootViewController:HomeVC)
        self.setupTabBar(homeNav, title: "Home", imageName: "home", selectedImageName: "home-full")

        
        // 商家--Merchant
        let merchantNav:UINavigationController = NavigationViewController(rootViewController: MerchantVC)
        self.setupTabBar(merchantNav, title: "Merchant", imageName: "merchant", selectedImageName: "merchant-full")
       

        // 消息--Message
        let messageNav:UINavigationController = NavigationViewController(rootViewController: messageVC)
        self.setupTabBar(messageNav, title:"Message", imageName: "information", selectedImageName: "information-full")
        
        
        // 我的--Mine
        let MineNav:UINavigationController = NavigationViewController(rootViewController: mineVC)
        self.setupTabBar(MineNav, title: "Mine", imageName: "my", selectedImageName: "my-full")
        
        
        
        
    }

    // 封装TabBar--packaging TabBar
    func setupTabBar(_ controller:UIViewController,title:NSString,imageName:NSString,selectedImageName:NSString)
    {
        controller.tabBarItem.title = title as String
        controller.tabBarItem.image = UIImage.init(named: imageName as String)
        controller.tabBarItem.selectedImage = UIImage.init(named: selectedImageName as String)
        
        self.tabBarItem.selectedImage?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        self.tabBar.tintColor = UIColor.orange

        self.addChildViewController(controller)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

   
}
