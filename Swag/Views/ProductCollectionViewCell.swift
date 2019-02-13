//
//  ProductCollectionViewCell.swift
//  Swag
//
//  Created by Madian on 2/13/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    
    //MARK: ------------ Outlets ----------------
    @IBOutlet weak var ProductImageView: UIImageView!
    @IBOutlet weak var ProducTitleLabel: UILabel!
    @IBOutlet weak var ProducPriceLabel: UILabel!
    
    //MARK: ------------ Methods ----------------
    func UpadateCell(withProduct produt: Product){
        ProductImageView.image = UIImage(named: produt.imageName)
        ProducPriceLabel.text = "\(produt.price) $"
        ProducTitleLabel.text = produt.title
    }
        
    
}
