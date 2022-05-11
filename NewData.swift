//
//  NewsData.swift
//  Most Popular News
//
//  Created by Manav Tandon on 05/06/22.
//   
//

import Foundation

class NewsData {
    
    let api = API()
    var title : [String]? = []
    var reporter : [String]? = []
    var url : [String]? = []
    var date : [String]? = []
    
    
    
    //Observer for data loading
    var reload = { ()->() in }
    
    var articles : [Results]? = [] {
        didSet {
            appendData()
            reload()
        }
    }
    //Load news articles with response
    func getData() {
        api.fetchData {
            data in
            guard let data = data else {  return }
            self.articles = (data.results)!
        }
    }
    
    func appendData(){
        guard let articles = self.articles else { return
        }
        for i in articles {
            self.url?.append(i.url!)
            self.title?.append(i.title!)
            self.reporter?.append(i.byline!)
            self.date?.append(i.published_date!)
        }
        
    }
    
    
    
    
}
