//
//  ListTableViewCell.swift
//  kidsStudy
//
//  Created by Eminko on 3.03.2023.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var labelText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        bgView.layer.cornerRadius = 30
        imgView.layer.cornerRadius = 30
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
