//
//  FetcherBaseParser.swift
//  app
//
//  Created by djzhang on 5/9/15.
//  Copyright (c) 2015 djzhang. All rights reserved.
//

import Foundation

class FetcherBaseParser: FetchProtocal{
    func getHost() -> String{
        return ""
    }
    
    func fetchHtml(completeHandler: ObjectHandler){
        DownloadHtmlHelper.downlaodHtml(getHost()) {
            (object, error) -> Void in
            if (error == nil) {
                let html: String = object as! String
                self.parseHtml(html)
            } else {
                let x = 0
            }
        }
    }
    
    func parseHtml(html:String){
        
    }
    
    // MARK:
    func getNodeText(element:GDataXMLElement,xpath:String) -> String{
        var text = ""
        let titleResults:NSArray = element.nodesForXPath(xpath, error: nil)
        println("length in getNodeText is \(titleResults.count)")
        if(titleResults.count == 1){
            let titleNode: GDataXMLNode = titleResults[0] as! GDataXMLNode
            text =  titleNode.XMLString()
            
//            println("\(titleNode.XMLString())")
        }
     
        return text
    }
}