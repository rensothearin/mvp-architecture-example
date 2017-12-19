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
  
  var url = URL(string: "http://api-ams.me/v1/api/articles?")!
  var headers = ["Content-Type": "Application/json",
                 "Authorization": "Basic QU1TQVBJQURNSU46QU1TQVBJUEBTU1dPUkQ="]
  
  // fetch article function
  func fetchArticles(atPage: Int, withLimitation: Int) {
    let get_url = "\(url)page=\(atPage)&limit=\(withLimitation)"
    
    Alamofire.request(get_url, method: HTTPMethod.get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseJSON { response in
      if let data = response.data {
        var articles = [Article]()
        do {
          let jsonResult = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String: Any]
          
          if let jsonArticle = jsonResult["DATA"] as? [AnyObject] {
            for article in jsonArticle {
              articles.append(Article(JSON: article as! [String: Any])!)
            }
            self.delegate?.didResponseData(articles: articles)
            print("Success")
          }
        } catch {
          print("Failed to get data")
        }
      }
    }
  }
  
  
}
