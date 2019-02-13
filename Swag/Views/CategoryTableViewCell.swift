//
//  CategoryTableViewCell.swift
//  Swag
//
//  Created by Madian on 2/13/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    //MARK: ------------ Outlets ----------------
    @IBOutlet weak var CategoryImageView: UIImageView!
    @IBOutlet weak var CategoryTitleLabel: UILabel!

    //MARK: ------------ Methods ----------------
    func UpadateCell(withCategory category: Category){
      
        if let title = category.title, let imageName = category.imageName {
            CategoryImageView.image = UIImage(named: imageName)
            CategoryTitleLabel.text = title
        }
        
    }
    
    
}
