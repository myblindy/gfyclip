//
//  UrlLocation.swift
//  GfyClip
//
//  Created by Marius Mitea on 2018-03-26.
//  Copyright © 2018 Marius Mitea. All rights reserved.
//

import Foundation

enum UrlLocationType : Int {
    case Unknown, YouTube
}

class UrlLocation {
    var location: String?
    var locationType = UrlLocationType.Unknown
    
    func setUrl(urlString: String?) -> UrlLocationType {
        location = urlString;
        if isRegexMatch(pattern: "^(?:https?:\\/\\/)?www\\.youtube\\.com\\/watch\\?v=([-a-zA-Z0-9]+)$", text: urlString) {
            locationType = .YouTube
        }
        else if isRegexMatch(pattern: "^(?:https?:\\/\\/)?youtu\\.be\\/([-a-zA-Z0-9]+)$", text: urlString) {
            locationType = .YouTube
        }
        else {
            locationType = .Unknown
        }
        
        return locationType;
    }
}
