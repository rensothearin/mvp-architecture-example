import Foundation
import ObjectMapper

struct Article {
  var title: String?
  var desc: String?
  var image: String?
}

extension Article: Mappable {
  
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    title <- map["TITLE"]
    desc <- map["DESCRIPTION"]
    image <- map["IMAGE"]
  }
  
  func convertObject() -> [String : Any] {
    
    let data = ["TITLE": self.title!,
                "DESCRIPTION": self.desc!,
                "IMAGE": self.image!]
    
    return data
  }
}







