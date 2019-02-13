//
//  Category.swift
//  Swag
//
//  Created by Madian on 2/13/19.
//  Copyright © 2019 Madian. All rights reserved.
//

import Foundation

class Category {
    var imageName: String?
    var title: String?
    var typeFlag: CategoryType?
    
    init(title: String, imageName: String, type: CategoryType) {
        self.title = title
        self.imageName = imageName
        self.typeFlag = type
    }
}
