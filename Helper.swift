//
//  Helper.swift
//  PopularNews
//
//  Created by Manav Tandon on 05/06/22.
//   
//

import UIKit


class Helper {
    
    let indicator = UIActivityIndicatorView()
    
    func loadInd(vc : UIViewController) {
        indicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        indicator.style = .gray
        indicator.center = vc.view.center
        vc.view.addSubview(indicator)
    }

    func showActIndicator() {
      
        indicator.startAnimating()
        
    }
    func stop() {
        indicator.stopAnimating()

    }
    
    
}
