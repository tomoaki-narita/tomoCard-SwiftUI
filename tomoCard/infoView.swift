//
//  infoView.swift
//  tomoCard
//
//  Created by output. on 2022/06/19.
//

import SwiftUI

//引数にテキスト内容を入れると楕円にテキストを乗せる構造体
struct InfoView: View {
    let text: String //引数をとるプロパティ
    let imageName: String
    
    //楕円のプロパティ
    var body: some View {
        RoundedRectangle(cornerRadius: 25) //楕円を作る
            .fill(Color.white) //楕円の色(塗りつぶし)
            .frame(height: 50) //楕円のサイズ。横は指定せずに縦のみ定義
            .overlay(HStack { //overlayにHStackを入れてその中に画像とテキストを入れることで横並びに表示できる
                Image(systemName: imageName) //画像(phone)の名前と色
                    .foregroundColor(.green)
                Text(text) //テキストと色
                    .foregroundColor(.black)
                    .foregroundColor(Color("Info Color")) //ダークモードが有効になっている場合テキストが白くレンダリングされることがある為修正
            })
            .padding(.all) //楕円に余白をつける
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
