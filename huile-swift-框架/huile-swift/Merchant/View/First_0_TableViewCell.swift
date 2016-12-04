//
//  First_0_TableViewCell.swift
//  huile-swift
//
//  Created by  周毅 on 16/4/7.
//  Copyright © 2016年 Aigean. All rights reserved.
//

import UIKit

class First_0_TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.initView()
        // Configure the view for the selected state
    }
    func initView(){
        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: 61))
        self .addSubview(view)
        
        let lblName = UILabel.init(frame: CGRect(x: 10, y: 16, width: 200, height: 13))
        lblName.text = "店铺名称"
        view .addSubview(lblName)
        for i in 0 ..< 5
        {
            let starImage = UIImageView.init(frame: CGRect(x: 10 + (CGFloat)(i*16), y: 38, width: 14 , height: 14))
            starImage.image = UIImage(named: "xingxing")
            view .addSubview(starImage)
        }
        let lblRefund = UILabel.init(frame: CGRect(x: 120, y: 38, width: 150, height: 14))
        lblRefund.text = "七天无理由退款"
        lblRefund.textColor = DEFAULT_COLOR
        lblRefund.font = UIFont.systemFont(ofSize: 12)
        view .addSubview(lblRefund)
        
        let lblDiscount = UILabel.init(frame: CGRect(x: SCREEN_WIDTH - 55, y: 38, width: 45, height: 15))
        lblDiscount.text = "8折"
        lblDiscount.textAlignment = NSTextAlignment.right
        lblDiscount.textColor = DEFAULT_COLOR
        lblDiscount.font = UIFont.systemFont(ofSize: 15)
        view .addSubview(lblDiscount)
        
        let buttonHeart = UIButton.init(frame:CGRect(x: SCREEN_WIDTH - 35, y: 16, width: 18, height: 18))
        buttonHeart .setBackgroundImage(UIImage(named: "fankui"), for: UIControlState())
        view .addSubview(buttonHeart)
        
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
