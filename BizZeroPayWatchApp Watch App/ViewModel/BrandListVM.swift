//
//  BrandListVM.swift
//  BizZeroPayWatchApp Watch App
//
//  Created by lymanny on 7/23/24.
//

import Foundation

class BrandListVM: ObservableObject {
    
    @Published var brandItems: [BrandListModel] = [
        BrandListModel(image: "cu", brand: "리안헤어", amount: "10,000원", count: 1, BGC_ID: "210430104020"),
        BrandListModel(image: "cu", brand: "CU", amount: "2,000원", count: 9, BGC_ID: "210430104020"),
        BrandListModel(image: "cu", brand: "CU", amount: "2,000원", count: 9, BGC_ID: "210430104020")
    ]
}
