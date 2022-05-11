//
//  API.swift
//  Most Popular News
//
//  Created by Manav Tandon on 05/06/22.
//   
//

import Foundation


class API {
    
    lazy var session = URLSession(configuration: .default)
    var dataTask = URLSessionDataTask()
    typealias DataHandler = (Data?, HTTPURLResponse?, Error?) -> Void
    
    //Connects to Backend API and get Response
    
    func getAPIResponse(completion : @escaping DataHandler) {
        
        let url = URL(string: clientURL+key)
        
        let dataTask = session.dataTask(with: url!) {
            
            (data,response,error) in
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, nil, error)
                print("Error in api response:",error!)
                return
            }
            
            if data == nil {
                if let error = error {
                    completion(nil, httpResponse, error)
                }
            } else {
                switch httpResponse.statusCode {
                case 200:
                    completion(data, httpResponse, nil)
                default:
                    print("Received HTTP response code : \(httpResponse.statusCode)")
                }
            }
        }
        dataTask.resume()
        
    }
    // Fetches the data content
    
    func fetchData(completion : @escaping (News?) -> Void) {
        
        getAPIResponse {
            
            (data, response, error) in
            
            guard let data = data else {
                completion(nil)
                return
            }
            do {
                
                let json =  try JSONDecoder().decode(News.self, from: data)
                completion(json)
            }
            catch
            {
                completion(nil)
            }
            
        }
        
    }
    
    
}





