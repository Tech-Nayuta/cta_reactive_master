//
//  NewsApiJSON.swift
//  CtaReactiveMaster
//
//  Created by 化田晃平 on R 3/01/08.
//
import Foundation

struct News: Decodable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]
}

struct Article: Decodable {
    let source: Source?
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: Date?
    let content: String?
}

struct Source: Decodable {
    let name: String?
}
