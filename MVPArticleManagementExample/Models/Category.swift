//
//  Category.swift
//  MVPArticleManagementExample
//
//  Created by រ៉េន សុធារិន on 12/17/17.
//  Copyright © 2017 រ៉េន សុធារិន. All rights reserved.
//

import Foundation
import ObjectMapper

struct Category {
  var name: String?
}

extension Category: Mappable {
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    name <- map["NAME"]
  }
}
