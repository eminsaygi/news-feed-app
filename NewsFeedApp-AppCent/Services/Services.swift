//
//  Service.swift
//  NewsFeedApp-AppCent
//
//  Created by Emin Saygı on 1.05.2022.
//

import Foundation

final class Services {
    
    static let shared = Services()
    
    let apiKey =   "&apiKey=ef572e5155e64dbe95ac4bf5616965e6"
    
    
    struct Constants {
        static let homeUrl = URL(string:
        "https://newsapi.org/v2/everything?q=besiktas&page=1&apiKey=ef572e5155e64dbe95ac4bf5616965e6"
        )
        static let searchURLKeyword = "https://newsapi.org/v2/everything?q="
        
    }
    private init() {}
    
    public func getTopStories(completion: @escaping (Result<[Article], Error>) -> Void) {
        guard let url = Constants.homeUrl else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                } catch {
                    completion(.failure(error))
                }
            }
            
        }
        task.resume()
    }
    
    public func search(with query: String, completion: @escaping (Result<[Article], Error>) -> Void) {
        guard !query.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        let urlString = Constants.searchURLKeyword + query + apiKey // Gets keywords for Search Bar.
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                } catch {
                    completion(.failure(error))
                }
            }
            
        }
        task.resume()
    }
    
}
