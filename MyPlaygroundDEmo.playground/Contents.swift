import UIKit

let urlString = "https://names.drycodes.com/1?format=text&nameOptions=boy_names&separator=space"
if let url = URL(string: urlString){
    URLSession.shared.dataTask(with: url) { data, Respons, error in
        if let data,
           let content = String(data: data, encoding: .utf8){
            print(content)
        }
    }.resume()
    
}

