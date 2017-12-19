//
//  Pagination.swift
//  MVPArticleManagementExample
//
//  Created by រ៉េន សុធារិន on 12/17/17.
//  Copyright © 2017 រ៉េន សុធារិន. All rights reserved.
//

import Foundation
import ObjectMapper

struct Pagination {
  var page: Int?
  var limit: Int?
  var total_count: Int?
  var total_pages: Int?
}

extension Pagination: Mappable {
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    page <- map["PAGE"]
    limit <- map["LIMIT"]
    total_count <- map["TOTAL_COUNT"]
    total_pages <- map["TOTAL_PAGES"]
  }
}
