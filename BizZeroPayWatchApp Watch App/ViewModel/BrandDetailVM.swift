//
//  BrandDetailVM.swift
//  BizZeroPayWatchApp Watch App
//
//  Created by lymanny on 7/25/24.
//

import Foundation

class BrandDetailVM: ObservableObject {
    
    @Published var brandItems: [BrandDetailModel] = [
        BrandDetailModel(image: "cu_coupon", brand: "모바일상품권", amount: "6,000원", count: 1, BGC_ID: "210430104020", PIN_NO: "998511287143"),
        BrandDetailModel(image: "cu_coupon", brand: "모바일상품권", amount: "2,000원", count: 9, BGC_ID: "210430104020", PIN_NO: "998511287148"),
        BrandDetailModel(image: "cu_coupon", brand: "모바일상품권", amount: "2,000원", count: 9, BGC_ID: "210430104020", PIN_NO: "998511287149")
    ]
}
