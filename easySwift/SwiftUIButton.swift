//
//  SwiftUIButton.swift
//  easySwift
//
//  Created by jianjun.yang on 2022/8/11.
//

import SwiftUI

struct SwiftUIButton: View {
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 15) {
                buttonViewItem(btnTitle: "微信登录", bgColor: Color(red: 88 / 255, green: 224 / 255, blue: 133 / 255))
                buttonViewItem(btnTitle: "Apple登录", bgColor: Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
            }
            HStack {
                IconViewButton(icon: "wechat")
                IconViewButton(icon: "qq")
                IconViewButton(icon: "weibo")
            }
        }
    }
}

struct SwiftUIButton_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButton()
    }
}

struct buttonViewItem: View {
    var btnTitle: String
    var bgColor: Color
    var body: some View {
        Button(action: {
            print(btnTitle)
        }) {
            Text(btnTitle).font(.system(size: 14))
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(bgColor)
                .cornerRadius(5)
                .padding(.horizontal, 20)
        }
    }
}

struct IconViewButton: View {
    var icon: String
    var body: some View {
        Button(action: {
            print("hello")
        }) {
            Image(icon).resizable().frame(minWidth: 0, maxWidth: 32, minHeight: 0, maxHeight: 32)
                .padding()
                .background(Color(red: 246 / 255, green: 246 / 255, blue: 246 / 255))
                .clipShape(Circle())
        }
    }
}
