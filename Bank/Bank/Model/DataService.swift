//
//  DataService.swift
//  AppPayDemo
//
//  Created by Leon King on 1/29/16.
//  Copyright © 2016 QinYejun. All rights reserved.
//

import Foundation
import Alamofire

struct DataService {
    
    fileprivate static let clientID = ""
    fileprivate static let clientSecret = ""
    
    fileprivate enum ResourcePath: CustomStringConvertible {
        case purchase
        case wxPayPrePay(orderID:Int)
        
        var description: String {
            switch self {
            case .purchase:  return "/order/purchase"
            case .wxPayPrePay(let id): return "/wxpay/prepay/\(id)"           
            }
        }
    }
    
//    static func reserveTour(productID productID: Int, date: String,
//        response: (MyOrder?, NSError?) -> ()) {
//            let urlString = serverURL + ResourcePath.Purchase.description
//            
//            let parameters = [
//                "ProductID": "\(productID)"
//            ]
//            
//            request(.POST, urlString, parameters: parameters).response { (_, _, data, error) -> Void in
//                if error == nil {
//    
//                    if let json = JSON.fromData(data) {
//                        if json["success"]?.bool == true {
//                            let result = JSONParser.parseOrder(json["data"]!)
//                            response(result, nil)
//                            
//                        } else {
//                            let code = json["errorCode"]?.integer ?? 0
//                            let msg = json["msg"]?.string ?? "未知错误"
//                            response(nil, NSError(domain: "come.apppaydemo", code: code, userInfo: ["msg": msg]))
//                        }
//                    } else {
//                        response(nil, NSError(domain: "come.apppaydemo", code: 404, userInfo: ["msg": "unknown error"]))
//                    }
//                } else {
//                    response(nil, NSError(domain: "come.apppaydemo", code: 404, userInfo: ["msg": "nknown error"]))
//                }
//            }
//    }
    
//    static func wxPrePay(orderID: Int, response: (WXPrePay?, NSError?) -> ()) {
//        let path = ResourcePath.WXPayPrePay(orderID: orderID)
//        let urlString = serverURL + path.description
//        
//        request(.GET, urlString, parameters: nil).response { (request, res, data, error) in
//            if error == nil {
//                if let json = JSON.fromData(data!) {
//                    if json["success"]?.bool == true {
//                        let r = JSONParser.parsePrePay(json)
//                        response(r, nil)
//                    } else {
//                        response(nil, NSError(domain: "come.apppaydemo", code: 404, userInfo: nil))
//                    }
//                }
//            } else {
//                response(nil, error)
//            }
//        }
//    }
    
}
