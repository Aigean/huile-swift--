//
//  MineViewController.swift
//  huile-swift
//
//  Created by  周毅 on 16/4/6.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class MineViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.navigationController?.isNavigationBarHidden = true
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let tableView = UITableView.init(frame: self.view.frame, style: .grouped)

        let hView = MineHeaderView()
        hView.frame = CGRect(x: 0, y: 0,width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/5)
        
        tableView.tableHeaderView = hView
        

        
        let tapView = UITapGestureRecognizer.init(target: self, action: "tapView:")
        hView .addGestureRecognizer(tapView)
        self.view .addSubview(tableView)
        
        

        let tapIcon = UITapGestureRecognizer.init(target: self, action: "tapIcon:")
        hView.icon.addGestureRecognizer(tapIcon)
        
        
        
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func tapView(_ sender:UITapGestureRecognizer){
        let VC = HeaderJumpViewController()
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    func tapIcon(_ sender:UITapGestureRecognizer){
        print("ddd")
    }

    

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0{
            return 2
        }
        if section == 1{
            return 4
        }
        else{
            return 3
        }
        
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let ID = "cell"
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: ID)
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        switch indexPath.section{
        case 0:
            switch indexPath.row{
            case 0:
                cell.imageView?.image = UIImage(named: "qianbao")
                cell.textLabel!.text = "My Wallet"
            case 1:
                cell.imageView?.image = UIImage(named: "jiaoyijilu")
                cell.textLabel?.text = "Transaction Record"
                
            default:
                break
            }
            
        case 1:
            switch indexPath.row{
            case 0:
                cell.textLabel?.text = "Share"
                cell.imageView?.image = UIImage(named: "fenxiang")
            case 1:
                cell.textLabel?.text = "Cooperation"
                cell.imageView?.image = UIImage(named: "hezuo")
            case 2:
                cell.textLabel?.text = "My Favorite"
                cell.imageView?.image = UIImage(named: "shoucang")
            default:
                cell.textLabel?.text = "Wipe Cache"
                cell.imageView?.image = UIImage(named: "jiaoyijilu")
                
            }
        case 2:
            switch indexPath.row{
            case 0:
                cell.textLabel?.text = "Setting"
                cell.imageView?.image = UIImage(named: "shezhi")
            case 1:
                cell.textLabel?.text = "About Us"
                cell.imageView?.image = UIImage(named: "guanyu")
            case 2:
                cell.textLabel?.text = "Feedback"
                cell.imageView?.image = UIImage(named: "fankui")
            default:
                break
            }
 
            
            
        default:
            break
            
        }

        return cell
        
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    
   
}
