//
//  FilterManage.swift
//  fotoroid
//
//  Created by Suh on 21/03/22.
//

import Foundation
import CoreImage
import UIKit


enum FilterType: Int {
    case comic
    case sepia
    case halftone
    case crystallize
    case vignette
    case noir
}

class FilterManager {
    
    let originalImage: UIImage
    let context = CIContext(options: nil) //fornece uma area para trabalhar com os efeitos
    let filterNames = [
        "CIComicEffect",
        "CISepiaTone",
        "CICMYKHalftone",
        "CICrystallize",
        "CIVignette",
        "CIPhotoEffectNoir"
    ]
    
    init(image: UIImage) {
        self.originalImage = image
    }
    
    func applyFilter(type: FilterType) -> UIImage {
        let ciImage = CIImage(image: originalImage)!
        let filter = CIFilter(name: filterNames[type.rawValue])!
        filter.setValue(ciImage, forKey: kCIInputImageKey)
        switch type {
        case .comic:
            break
        case .sepia:
            filter.setValue(1.0, forKey: kCIInputIntensityKey)
        case .halftone:
            filter.setValue(25, forKey: kCIInputWidthKey)
        case .crystallize:
            filter.setValue(25, forKey: kCIInputRadiusKey)
        case .vignette:
            filter.setValue(3, forKey: kCIInputIntensityKey)
            filter.setValue(30, forKey: kCIInputRadiusKey)
        case .noir:
            break
        }
        let filteredImage = filter.value(forKey: kCIOutputImageKey) as! CIImage
        let cgImage = context.createCGImage(filteredImage, from: filteredImage.extent)
        return UIImage(cgImage: cgImage!)
    }
    
    
}
