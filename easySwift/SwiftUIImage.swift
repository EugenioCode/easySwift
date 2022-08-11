//
//  SwiftUIImage.swift
//  easySwift
//
//  Created by jianjun.yang on 2022/8/5.
//

import SwiftUI

struct SwiftUIImage: View {
    var body: some View {
        VStack {
            ScrollView {
                // .resizable() 缩放图片
                // .edgesIgnoringSafeArea(.all) 忽略安全区
                // .scaledToFit() 等比缩放 效果等于 .aspectRatio(contentMode: .fill)

                Image("示例图片")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFit()
                // .frame()设置大小
                Image("示例图片")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                // 裁剪图片
                Image("示例图片").resizable().aspectRatio(contentMode: .fit).frame(width: 200).clipShape(Circle())
                // 透明度设置
                Image("示例图片").resizable().scaledToFit().opacity(0.3)
                
                //文字覆盖
                Image("示例图片").resizable().aspectRatio(contentMode: .fit).opacity(0.6).overlay(
                    Text("文字覆盖").fontWeight(.bold).foregroundColor(.red).font(.system(size: 40))
                )
                
                // 使用系统图标
                Image(systemName: "square.and.arrow.up.circle.fill").font(.system(size: 60))
            }
            
            
        }
    }
}

struct SwiftUIImage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImage()
    }
}
