//
//  APIConst.swift
//  Puzzling-iOS
//
//  Created by KJ on 2023/07/04.
//

import Foundation

enum NetworkHeaderKey: String {
    case deviceToken = "deviceToken"
    case accessToken = "accesstoken"
    case contentType = "Content-Type"
    case authorization = "Authorization"
    case refresh = "Refresh"
}

enum APIConstants {
    
    static let accept: String = "Accept"
    static let auth: String = "x-auth-token"
    static let applicationJSON = "application/json"
    static var deviceToken: String = ""
    static var jwtToken: String = ""
    static var accessToken: String = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE2ODk2MTIzODEsImV4cCI6MTY4OTk3MjM4MSwibWVtYmVySWQiOjF9.Ktl_IFV0hKtOG4qgyx9erGfBP-w80CzhslxZWgUFg3s"
    static var authorization: String = ""
    static var refresh: String = ""
    
    //MARK: - Header
    
    static var headerWithOutToken: [String: String] {
        [NetworkHeaderKey.contentType.rawValue: APIConstants.applicationJSON]
    }
    
    static var headerWithDeviceToken: [String: String] {
        [
            NetworkHeaderKey.contentType.rawValue: APIConstants.applicationJSON,
            NetworkHeaderKey.authorization.rawValue: URLConst.bearer + APIConstants.accessToken
        ]
    }
    
    static var headerWithAuthorization: [String: String] {
        [
            NetworkHeaderKey.contentType.rawValue: APIConstants.applicationJSON,
            NetworkHeaderKey.authorization.rawValue: URLConst.bearer + APIConstants.accessToken
        ]
    }
    
    static var headerWithRefresh: [String: String] {
        [
            NetworkHeaderKey.contentType.rawValue: APIConstants.applicationJSON,
            NetworkHeaderKey.authorization.rawValue: URLConst.bearer + APIConstants.accessToken
        ]
    }
}

