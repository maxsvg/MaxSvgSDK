//
//  JsonRequests.swift
//  MaxSvgSDK
//
//  Created by Maxime Sauvage on 11/12/2020.
//

import Foundation
import Alamofire

public class WSCalls {
    
    public static func callWS(completion: ((MSVGData?) -> ())?) {
        let url = "http://api.plos.org/search?q=title:%22Drosophila%22%20and%20body:%22RNA%22&fl=id&start=100&rows=100"
        AF.request(url).responseDecodable(of: MSVGData.self) { response in
            debugPrint(response)
            completion?(response.value)
        }
    }
    
}
