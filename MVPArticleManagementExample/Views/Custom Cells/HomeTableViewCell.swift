//
//  HomeTableViewCell.swift
//  MVPArticleManagementExample
//
//  Created by រ៉េន សុធារិន on 12/18/17.
//  Copyright © 2017 រ៉េន សុធារិន. All rights reserved.
//

import UIKit
import Kingfisher

class HomeTableViewCell: UITableViewCell {
  
  @IBOutlet weak var thumnailImageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  

    override func awakeFromNib() {
        super.awakeFromNib()
      
        
    }
  
  func configureCell(article: Article) {
    thumnailImageView.kf.setImage(with: URL(string: article.image!), placeholder: #imageLiteral(resourceName: "github_logo"))
    titleLabel.text = article.title
    descriptionLabel.text = article.desc
  }


}
