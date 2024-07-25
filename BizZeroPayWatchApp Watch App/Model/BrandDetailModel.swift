//
//  BrandDetailModel.swift
//  BizZeroPayWatchApp Watch App
//
//  Created by lymanny on 7/25/24.
//

import Foundation

struct BrandDetailModel: Identifiable {
    let id = UUID()
    let image: String
    let brand: String
    let amount: String
    let count: Int
    let BGC_ID: String
    let PIN_NO: String
}
