
//
//  MerchatDetailViewController.swift
//  huile-swift
//
//  Created by  周毅 on 16/4/7.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class MerchatDetailViewController:UITableViewController,ParallaxHeaderViewDelegate {
  
    
    //var tableView:UITableView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.setMyBackgroundColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.5))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image:UIImage(named: "fenxiang")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal), style: UIBarButtonItemStyle.plain, target: self, action: nil)
        // UIImage(named: "fenxiang")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        self.navigationItem.title = "店铺详情"

        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 100))
        imageView.image = UIImage(named: "banner")
        imageView.contentMode = .scaleAspectFill
        
        
        let heardView = ParallaxHeaderView(style: .default, subView: imageView, headerViewSize: CGSize(width: self.tableView.bounds.width, height: 100), maxOffsetY: -120, delegate: self)
        
        
        tableView.tableHeaderView = heardView
    }

    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let heardView = self.tableView.tableHeaderView as! ParallaxHeaderView
        heardView.layoutHeaderViewWhenScroll(scrollView.contentOffset)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return 2
        case 1:
            return 4
        default:
            return 4
        }
   }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
//        
//        let ID = "cell"
//        let cell = UITableViewCell.init(style: .Default, reuseIdentifier: ID)
//        switch indexPath.section{
//        case 0:
//        switch indexPath.row{
//        case 0:
        if indexPath.section == 0 && indexPath.row == 0
        {
            let cell = First_0_TableViewCell.cellWithTableView(tableView)
            //cell.textLabel?.text = "123"
            return cell!
        }
        else
        {
            let ID = "cell"
            let cell = UITableViewCell.init(style: .default, reuseIdentifier: ID)
            cell.textLabel?.text = "000"
            return cell
        }
//        default:
//            break
//        }
//        default:
//        break
//    }
//    return cell
    
}

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            switch indexPath.row{
            case 0:
                return 61
            case 1:
                return 45
            default:
                break
            }
        case 1:
            switch indexPath.row{
            case 0,2:
                return 35
            case 1,3:
                return 100;
            default:
                break
            }
        case 2:
            switch indexPath.row{
            case 0:
                return 45
            default:
                return 105
            }
        default:
            break
        }
      return 0
        
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }

}

