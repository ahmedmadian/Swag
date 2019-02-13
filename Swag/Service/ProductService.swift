//
//  ProductService.swift
//  Swag
//
//  Created by Madian on 2/13/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import Foundation

class ProductService{
    static let Shirts = [Product(title: "Devslops Logo graphic T-shirt", price: 20, imageName: "shirt01"),
                         Product(title: "Devslops Logo graphic T-shirt", price: 20, imageName: "shirt01"),
                         Product(title: "Devslops Logo graphic T-shirt", price: 20, imageName: "shirt01"),
                         Product(title: "Devslops Logo graphic T-shirt", price: 20, imageName: "shirt01"),
                         Product(title: "Devslops Logo graphic T-shirt", price: 20, imageName: "shirt01")]
    
    
    static func getProduct(withCategory category: Category) -> [Product]?{
        if let type = category.typeFlag {
            switch type{
            case .Hats:
                return [Product]()
            case .T_Shirt:
                return Shirts
            case .Hoodies:
                return [Product]()
            case .Digital:
                return [Product]()
            }
        }
        return nil
    }
}
