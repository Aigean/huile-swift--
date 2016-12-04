//
//  First_1_TableViewCell.swift
//  huile-swift
//
//  Created by  周毅 on 16/4/12.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class First_1_TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initView(){
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 45))
        self .addSubview(view)
        
        
        let buttonAddress = UIButton.init(frame:CGRect(x: 0, y: 0, width: SCREEN_WIDTH - 50, height: 45))
        buttonAddress .setImage(UIImage(named: "map"), for: UIControlState());
        buttonAddress .setTitle("武汉大学", for:UIControlState())
        view .addSubview(buttonAddress)
        
//        let lblName = UILabel.init(frame: CGRectMake(10, 16, 200, 13))
//        lblName.text = "店铺名称"
//        view .addSubview(lblName)
//        for var i = 0;i < 5;i++
//        {
//            let starImage = UIImageView.init(frame: CGRectMake(10 + (CGFloat)(i*16), 38, 14 , 14))
//            starImage.image = UIImage(named: "xingxing")
//            view .addSubview(starImage)
//        }
//        let lblRefund = UILabel.init(frame: CGRectMake(120, 38, 150, 14))
//        lblRefund.text = "七天无理由退款"
//        lblRefund.textColor = DEFAULT_COLOR
//        lblRefund.font = UIFont.systemFontOfSize(12)
//        view .addSubview(lblRefund)
//        
//        let lblDiscount = UILabel.init(frame: CGRectMake(SCREEN_WIDTH - 55, 38, 45, 15))
//        lblDiscount.text = "8折"
//        lblDiscount.textAlignment = NSTextAlignment.Right
//        lblDiscount.textColor = DEFAULT_COLOR
//        lblDiscount.font = UIFont.systemFontOfSize(15)
//        view .addSubview(lblDiscount)
//        
//        let buttonHeart = UIButton.init(frame:CGRectMake(SCREEN_WIDTH - 35, 16, 18, 18))
//        buttonHeart .setBackgroundImage(UIImage(named: "fankui"), forState: UIControlState.Normal)
//        view .addSubview(buttonHeart)
        
    }
    
    
    class func cellWithTableView(_ tableView:UITableView)->First_0_TableViewCell!{
        let ID = "cell"
        let cell = First_0_TableViewCell.init(style: .default, reuseIdentifier: ID)
        //var cell = tableView .dequeueReusableCellWithIdentifier(ID)
        //        if cell == nil
        //        {
        //            cell = First_0_TableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: ID)
        //
        //        }
        
        return cell
    }

    
}
