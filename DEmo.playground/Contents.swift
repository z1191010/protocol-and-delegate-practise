import Foundation

let urlString = "https://names.drycodes.com/2?nameOptions=boy_names&format=text&prefix=%E8%A6%AA%E6%84%9B%E7%9A%84"

if let url = URL(string: urlString) {
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let data,
           let content = String(data: data, encoding: .utf8) {
            print(content)
        }
    }
    task.resume()
}



