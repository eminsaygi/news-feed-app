//
//  ServiceModel.swift
//  NewsFeedApp-AppCent
//
//  Created by Emin Saygı on 1.05.2022.
//

import Foundation

struct APIResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let source: Source
    let title: String
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String
    let author: String?
}

struct Source: Codable {
    let name: String
}
