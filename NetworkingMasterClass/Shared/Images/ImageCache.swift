//
//  ImageCache.swift
//  NetworkingMasterClass
//
//  Created by Jaled Jara on 3/12/24.
//

import Foundation
import UIKit

class ImageCache {
    static let shared = ImageCache()
    
    private let cache = NSCache<NSString, UIImage>()
    
    private init() {  }
    
    func set(_image uiImage: UIImage, forKey key: String) {
        cache.setObject(uiImage, forKey: key as NSString)
    }
    
    func get(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
}
