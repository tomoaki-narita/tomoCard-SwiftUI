//
//  ContentView.swift
//  tomoCard
//
//  Created by output. on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 0.8) //背景色と透明度
                .edgesIgnoringSafeArea(.all) //セーフエリアにも背景色を反映させる
            VStack {
                Image("tom") //imageファイルの名前
                    .resizable() //imageのリサイズ
                    .aspectRatio(contentMode: .fit) //imageの表示モード
                    .frame(width: 130.0, height: 150.0) //imageの比率
                    .clipShape(Circle()) //imageを円形に
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3) //imageに枠をつける
                    )
                
                Text("Tomoaki Narita")
                    .font(Font.custom("Pacifico-Regular", size: 40)) //fontのサイズとフォント変更(info.plistのFonts provided by applicationを選択してitem0のvalueにフォント名を書く)
                    .bold() //テキストの太さ
                    .foregroundColor(.white) //テキストの色
                //.padding()
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider() //線を引く
                
                //InfoView構造体を実行して電話番号とメールアドレスを設置
                InfoView(text: "080 1814 7969", imageName: "phone.fill")
                InfoView(text: "output@unwraps.net", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro") //プレビューの機種を変更
    }
}

