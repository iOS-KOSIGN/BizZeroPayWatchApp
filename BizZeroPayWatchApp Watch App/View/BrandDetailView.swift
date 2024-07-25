//
//  BrandDetailView.swift
//  BizZeroPayWatchApp Watch App
//
//  Created by lymanny on 7/23/24.
//

import SwiftUI

struct BrandDetailView: View {
    @ObservedObject var viewModel = BrandDetailVM()
    var item: BrandListModel // data from BrandListView
    
    var body: some View {
        NavigationView {
            VStack {
                Text("CU")
                    .font(.headline)
                    .padding(.top, 10)
                
                HStack {
                    HStack(spacing: 0) {
                        Text("결제할 상품권을 선택해 주세요")
                            .font(.subheadline)
                    }
                    .padding(.bottom, 5)
                    .padding(.leading, 5)
                    Spacer()
                }
                
                ScrollView {
                    VStack {
                        ForEach(viewModel.brandItems) { item in
                            NavigationLink(destination: BarCodeView(item: item)) {
                                HStack {
                                    Image(item.image)
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .clipShape(Circle())
                                    
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(item.brand)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .lineLimit(1)
                                            .truncationMode(.tail)
                                        Text(item.amount)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                    }
                                    
                                    Spacer()
                                }
                                .padding()
                                .background(Color.white.opacity(0.1)) // Set alpha value for black
                                .cornerRadius(10)
                                .padding(.horizontal, 0)
                            }
                            .buttonStyle(PlainButtonStyle()) // To prevent NavigationLink from affecting the design
                        }
                    }
                }
            }
            .background(Color.black.opacity(0.9))
        }
    }
}

struct BrandDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BrandListView()
    }
}

