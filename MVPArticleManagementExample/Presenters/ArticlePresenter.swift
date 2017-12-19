//
//  ArticlePresenter.swift
//  MVPArticleManagementExample
//
//  Created by រ៉េន សុធារិន on 12/15/17.
//  Copyright © 2017 រ៉េន សុធារិន. All rights reserved.
//

import Foundation
import ObjectMapper

class ArticlePresenter {
  
  var delegate: ArticlePresenterProtocol?
  var articleService: ArticleService?
  
  init() {
    // Initial article service
    articleService = ArticleService()
    // set delegate
    articleService?.delegate = self
  }
  
  // Get article function
  func getArticle(atPage: Int, withLimitation: Int) {
    articleService?.fetchArticles(atPage: atPage, withLimitation: withLimitation)
  }
}

extension ArticlePresenter: ArticleServiceProtocol {
  
  // Conform protocol method
  func didResponseData(articles: [Article]) {
    self.delegate?.didResponseData(articles: articles)
  }
}

