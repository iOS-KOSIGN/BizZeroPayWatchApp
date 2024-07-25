//
//  BarCodeView.swift
//  BizZeroPayWatchApp Watch App
//
//  Created by lymanny on 7/25/24.
//

import SwiftUI
import CoreGraphics

struct BarCodeView: View {
    let item: BrandDetailModel
    
    var body: some View {
        VStack {
            
            HStack {
                VStack(alignment: .leading) {
                    Text(item.brand)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Text(item.amount)
                        .font(.title3)
                        .foregroundColor(.white)
                }
                Spacer()
                Image(item.image)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.horizontal)
            
            if let barcodeImage = generateBarcode(from: item.PIN_NO) {
                Image(uiImage: barcodeImage)
                    .resizable()
                    .frame(height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal)
            } else {
                Text("Failed to generate barcode")
                    .foregroundColor(.red)
            }
            
            Spacer()
        }
        .background(Color.black)
        .cornerRadius(15)
        .padding()
    }

    func generateBarcode(from string: String) -> UIImage? {
        let size = CGSize(width: 300, height: 100)
        let scale: CGFloat = 3
        
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        
        let barWidth: CGFloat = size.width / CGFloat(string.count * 3) // Each digit in Code 128 barcode has 3 bars
        
        for (index, character) in string.enumerated() {
            let x = CGFloat(index) * barWidth * 3
            let height = size.height
            
            // Sample encoding: modify this as per actual barcode standards
            let patterns = [
                "0": "101",
                "1": "110",
                "2": "100",
                "3": "111",
                "4": "110",
                "5": "100",
                "6": "111",
                "7": "101",
                "8": "110",
                "9": "100"
            ]
            
            if let pattern = patterns[String(character)] {
                for (i, bit) in pattern.enumerated() {
                    let barX = x + CGFloat(i) * barWidth
                    if bit == "1" {
                        context.setFillColor(UIColor.black.cgColor)
                    } else {
                        context.setFillColor(UIColor.white.cgColor)
                    }
                    context.fill(CGRect(x: barX, y: 0, width: barWidth, height: height))
                }
            }
        }
        
        let barcodeImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return barcodeImage
    }
}
