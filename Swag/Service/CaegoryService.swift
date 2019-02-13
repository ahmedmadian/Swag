//
//  CaegoryService.swift
//  Swag
//
//  Created by Madian on 2/13/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import Foundation

class CategoryService {
    static func getCateories() -> [Category]{
       let categories =  [
        Category(title:"Shirts", imageName: "shirts", type: CategoryType.T_Shirt),
        Category(title:"HOODIES", imageName: "hoodies", type: CategoryType.Hoodies),
        Category(title:"HATS", imageName: "hats", type: CategoryType.Hats),
        Category(title:"DIGITAL", imageName: "digital", type: CategoryType.Digital),
        ]
        return categories
    }
}
