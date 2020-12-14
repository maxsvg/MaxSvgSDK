//
//  Data.swift
//  MaxSvgSDK
//
//  Created by Maxime Sauvage on 11/12/2020.
//

import Foundation

public struct MSVGData: Decodable {
    public let response: Resp
}

public struct Resp: Decodable {
    public let numFound: Int
    public let start: Int
}
