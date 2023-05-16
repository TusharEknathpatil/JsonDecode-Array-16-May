//
//  ApiResponse.swift
//  JSONDECODER-16-may-pratiksha
//
//  Created by Mac on 16/05/23.
//

import Foundation

struct ApiResponse:Decodable {
    var name:Name
//    var tld:[String]
//    var cca2:String
//    var ccn3:String
//    var cca3:String
//    var cioc:String
//    var independent:Bool
//    var status:String
//    var unMember:Bool
//    var currencies:Currencies
//    var idd:Idd
//    var capital:[String]
//    var altSpellings:[String]
//    var region:String
//    var subregion:String
//    var languages:languagess

}

//struct languagess:Decodable {
//    var bis:String
//    var eng:String
//    var fra:String
//
//}
//
//
//
//struct Idd:Decodable {
//    var root:String
//    var suffixes:[String]
//}
//
//struct Currencies:Decodable {
//    var VUV:VUVS
//}
//
//struct VUVS:Decodable {
//    var name:String
//    var symbol:String
//}


struct Name:Decodable {
    var common:String
    var official:String
    var nativeName:NativeName
}

struct NativeName:Decodable {
    var bis:Bis
    var eng:Eng
    var fra:Fra
}

struct Bis:Decodable {
    var official:String
    var common:String
}

struct Eng:Decodable {
    var official:String
    var common:String
}

struct Fra:Decodable {
    var official:String
    var common:String

}
