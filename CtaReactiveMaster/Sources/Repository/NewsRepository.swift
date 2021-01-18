//
//  NewsRepository.swift
//  CtaReactiveMaster
//
//  Created by 化田晃平 on R 3/01/16.
//

import Foundation

protocol Repository{
    associatedtype Response
    var apiClient: APIClient { get }
    func fetch(completion: @escaping (Result<Response, NewsAPIError>) -> Void)
}

struct NewsRepository: Repository{
    typealias Response = News
    let apiClient = APIClient()
    
    func fetch(completion: @escaping (Result<Response, NewsAPIError>) -> Void){
        let request = NewsAPIRequest(endpoint: .topHeadlines)
        apiClient.request(request, completion: completion)
    }
}
