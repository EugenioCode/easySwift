//
//  ContentView.swift
//  easySwift
//
//  Created by jianjun.yang on 2022/8/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 设置字重
            Text("设置自重").fontWeight(.bold)
            
            // 设置标题样式
            Text("设置标题样式").font(.title)
            
            // 设置字体大小
            Text("设置字体大小").font(.system(size: 40))
            
            // 设置字体颜色
            Text("设置字体颜色").foregroundColor(.blue)
            
            // 设置阴影
            Text("设置阴影").shadow(color: .red, radius: 10, x: 10, y: 10)
            
            // 设置背景色
            Text("设置背景色").foregroundColor(.white).background(.red).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
