//
//  FetcherHelper.swift
//  appBDD
//
//  Created by djzhang on 5/8/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

import Foundation
import Alamofire

extension Request {
    class func XMLResponseSerializer() -> Serializer {
        return { (request, response, data) in
            if data == nil {
                return (nil, nil)
            }
            
            var XMLSerializationError: NSError?
//            let XML = ONOXMLDocument(data: data, &XMLSerializationError)
            
            return (data, XMLSerializationError)
        }
    }
    
    func responseXMLDocument(completionHandler: (NSURLRequest, NSHTTPURLResponse?, AnyObject?, NSError?) -> Void) -> Self {
        return response(serializer: Request.XMLResponseSerializer(), completionHandler: { (request, response, XML, error) in
            
            let x = 0
//            completionHandler(request, response, XML as? ONOXMLDocument, error)
        })
    }
}