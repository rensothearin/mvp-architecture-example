//
//  ArticleService.swift
//  MVPArticleManagementExample
//
//  Created by រ៉េន សុធារិន on 12/15/17.
//  Copyright © 2017 រ៉េន សុធារិន. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class ArticleService {
  
  // ArticleServiceProtocol Delegate Object
  var delegate: ArticleServiceProtocol?
  
  var get_url = URL(string: "http://120.136.24.174:1301/v1/api/articles?")!
  var headers = ["Content-Type": "Application/json",
                 "Authorization": "Basic QU1TQVBJQURNSU46QU1TQVBJUEBTU1dPUkQ=",
                 "Response": "Application/json"]
  
  func getArticles(withPage: Int, withLimitation: Int) {
    
  }
  
  
}
