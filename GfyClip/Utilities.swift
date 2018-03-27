//
//  Utilities.swift
//  GfyClip
//
//  Created by Marius Mitea on 2018-03-26.
//  Copyright © 2018 Marius Mitea. All rights reserved.
//

import Foundation
import UIKit

func isRegexMatch(pattern: String, text: String?, caseInsensitive: Bool = false) -> Bool {
    if let text = text {
        return text.range(of: pattern, options: caseInsensitive
            ? .regularExpression
            : [.regularExpression, .caseInsensitive]) != nil
    }
    return false;
}


func isUrlValid(urlString: String?) -> Bool {
    if let urlString  = urlString {
        if let url = URL(string: urlString) {
            return UIApplication.shared.canOpenURL(url)
        }
    }
    
    return false
}
