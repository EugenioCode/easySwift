//
//  SwiftUIStacks.swift
//  easySwift
//
//  Created by jianjun.yang on 2022/8/8.
//

import SwiftUI

struct SwiftUIStacks: View {
    var body: some View {
        VStack {
            titleView()
            // 定价方案
            HStack {
                ZStack {
                    pricingViewItem(title: "连续包月", price: "￥18", bgcolor: Color(red: 250 / 255, green: 247 / 255, blue: 243 / 255), prePrice: "")
                        .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color(red: 202 / 255, green: 169 / 255, blue: 106 / 255), lineWidth: 2))
                    specialOfferView()
                }
                pricingViewItem(title: "1个月", price: "￥30", bgcolor: Color(red: 244 / 255, green: 244 / 255, blue: 245 / 255), prePrice: "")
                pricingViewItem(title: "12个月", price: "￥228", bgcolor: Color(red: 244 / 255, green: 244 / 255, blue: 245 / 255), prePrice: "￥19.00/月")
            }.padding()
        }
    }
}

struct SwiftUIStacks_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStacks()
    }
}

struct titleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("会员套餐").font(.title).fontWeight(.bold)
                Text("解锁高级功能").font(.title).fontWeight(.bold)
            }
            Spacer()
        }.padding()
    }
}

struct pricingViewItem: View {
    var title: String
    var price: String
    var bgcolor: Color
    var prePrice: String
    var body: some View {
        VStack {
            Text(title)
                .fontWeight(.bold)
                .font(.system(size: 16))
                .foregroundColor(Color(red: 190 / 255, green: 188 / 255, blue: 184 / 255))
            Text(price)
                .fontWeight(.bold)
                .font(.system(size: 26))
                .foregroundColor(Color(red: 239 / 255, green: 129 / 255, blue: 112 / 255))
            Text(prePrice)
                .fontWeight(.bold)
                .font(.system(size: 16))
                .foregroundColor(Color(red: 190 / 255, green: 188 / 255, blue: 184 / 255))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80)
        .padding(16)
        .background(bgcolor)
    }
}

struct specialOfferView: View {
    var body: some View {
        Text("首月特惠").font(.system(size: 14)).fontWeight(.bold).foregroundColor(.white).padding(5)
            .background(Color(red: 202 / 255, green: 169 / 255, blue: 106 / 255))
            .cornerRadius(4).offset(x: 0, y: -55)
    }
}
