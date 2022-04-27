
import Foundation
import UIKit

struct Post: Hashable, Codable, Identifiable {
   var id = UUID()
    var sign: String
    var date: String
    var horoscope: String
}


class ViewModel: ObservableObject {
  
    static let shared = ViewModel()
    func fetch(nameOfHoroscope: String){
        guard let url = URL(string: nameOfHoroscope) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){ data,
            _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let post = try JSONDecoder().decode(Post.self, from: data)
              
            }
            catch{
                print(error)
            }
        }
      
        task.resume()
     
       
    }

   
   
}
