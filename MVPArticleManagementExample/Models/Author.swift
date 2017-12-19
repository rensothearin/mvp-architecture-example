//
//  Author.swift
//  MVPArticleManagementExample
//
//  Created by រ៉េន សុធារិន on 12/17/17.
//  Copyright © 2017 រ៉េន សុធារិន. All rights reserved.
//

import Foundation
import ObjectMapper

struct Author {
  var name: String?
  var email: String?
  var gender: String?
  var telephone: String?
  var status: String?
  var facebook_id: String?
  var image_url: String?
}

extension Author: Mappable {
  init?(map: Map) {
  
  }
  
  mutating func mapping(map: Map) {
    name <- map["NAME"]
    email <- map["EMAIL"]
    gender <- map["GENDER"]
    telephone <- map["TELEPHONE"]
    status <- map["STATUS"]
    facebook_id <- map["FACEBOOK_ID"]
    image_url <- map["IMAGE_URL"]
  }
}
