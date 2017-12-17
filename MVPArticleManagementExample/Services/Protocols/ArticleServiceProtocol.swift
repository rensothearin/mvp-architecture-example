//
//  ArticleServiceProtocol.swift
//  MVPArticleManagementExample
//
//  Created by រ៉េន សុធារិន on 12/15/17.
//  Copyright © 2017 រ៉េន សុធារិន. All rights reserved.
//

import Foundation


protocol ArticleServiceProtocol: class {
  
  func didResponseData(articles: [Article])
}
