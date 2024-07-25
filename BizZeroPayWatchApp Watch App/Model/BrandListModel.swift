//
//  BrandListModel.swift
//  BizZeroPayWatchApp Watch App
//
//  Created by lymanny on 7/23/24.
//

import Foundation

struct BrandListModel: Identifiable {
    let id = UUID()
    let image: String
    let brand: String
    let amount: String
    let count: Int
    let BGC_ID: String
}
