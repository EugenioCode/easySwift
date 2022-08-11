//
//  SwiftUIScrollView.swift
//  easySwift
//
//  Created by jianjun.yang on 2022/8/11.
//

import SwiftUI

struct SwiftUIScrollView: View {
    var body: some View {
        ScrollView {
            VStack {
                cardViewItem(image: "示例图片", text: "你的能力是否能在全世界通用，如果不能,那么需求重新评估你的能力。")
                cardViewItem(image: "示例图片", text: "当你判断你的想法是正确的，那么就在今天完成吧。")
                cardViewItem(image: "示例图片", text: "将自身所学回馈社会，，不也是一件幸福的事么。")
                cardViewItem(image: "示例图片", text: "成功的秘诀是，绝对不要和别人做同样的事情。")
            }
        }
    }
}

struct SwiftUIScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIScrollView()
    }
}

struct cardViewItem: View {
    var image: String
    var text: String
    var body: some View {
        VStack {
            Image(image).resizable().aspectRatio(contentMode: .fit)
            Text(text).font(.system(size: 17)).fontWeight(.bold).foregroundColor(.black)
                .padding()
        }.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)).padding([.top, .horizontal])
    }
}
