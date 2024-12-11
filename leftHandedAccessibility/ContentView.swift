//
//  ContentView.swift
//  leftHandedAccessibility
//
//  Created by 大場史温 on 2024/12/11.
//

import SwiftUI
import CoreMotion

struct ContentView: View {
    private let motionManager = CMMotionManager()
    @State private var x: Double = 0.0
    @State private var isLeftHand: Bool = false
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack() {
                    HStack {
                        if isLeftHand {
                            Spacer()
                        }
                        if !isLeftHand {
                            Circle()
                                .foregroundStyle(.gray)
                                .frame(width: 60,height: 60)
                        }
                        
                        VStack(alignment: !isLeftHand ?.leading :.trailing) {
                            Text("アカウント名")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("@example")
                                .font(.caption)
                        }
                        .padding()
                        if isLeftHand {
                            Circle()
                                .foregroundStyle(.gray)
                                .frame(width: 60,height: 60)
                        }
                        if !isLeftHand {
                            Spacer()
                        }
                    }
                    .padding()
                    ScrollView(.horizontal) {
                        HStack() {
                            Text("アカウントを切り替える")
                                .font(.caption)
                                .padding(10)
                                .background(Color.gray.opacity(0.4))
                                .clipShape(.capsule)
                            Text("アカウントを切り替える")
                                .font(.caption)
                                .padding(10)
                                .background(Color.gray.opacity(0.4))
                                .clipShape(.capsule)
                            Text("アカウントを切り替える")
                                .font(.caption)
                                .padding(10)
                                .background(Color.gray.opacity(0.4))
                                .clipShape(.capsule)
                            Text("アカウントを切り替える")
                                .font(.caption)
                                .padding(10)
                                .background(Color.gray.opacity(0.4))
                                .clipShape(.capsule)
                        }
                        .padding(.horizontal)
                    }
                    HStack{
                        if isLeftHand {
                            Button {
                                print("tap")
                            } label: {
                                Text("すべて表示")
                                    .foregroundStyle(.black)
                                    .font(.caption)
                                    .padding(10)
                                    .overlay {
                                                   RoundedRectangle(cornerRadius: 30)
                                                       .stroke(lineWidth: 1)
                                                       .fill(Color.gray)
                                               }
                                               .mask {
                                                   RoundedRectangle(cornerRadius: 30)
                                               }
                            }
                            Spacer()
                        }
                        Text("履歴")
                            .font(.title3)
                        if !isLeftHand {
                            Spacer()
                            Button {
                                print("tap")
                            } label: {
                                Text("すべて表示")
                                    .foregroundStyle(.black)
                                    .font(.caption)
                                    .padding(10)
                                    .overlay {
                                                   RoundedRectangle(cornerRadius: 30)
                                                       .stroke(lineWidth: 1)
                                                       .fill(Color.gray)
                                               }
                                               .mask {
                                                   RoundedRectangle(cornerRadius: 30)
                                               }
                            }
                        }
                    }
                    .padding()
                    
                    ScrollView(.horizontal) {
                        HStack{
                            VStack(alignment:.leading) {
                                Rectangle()
                                    .foregroundStyle(.gray)
                                    .frame(width: 130,height: 90)
                                    .cornerRadius(10)
                                Text("動画タイトル")
                                    .font(.footnote)
                            }
                            VStack(alignment:.leading) {
                                Rectangle()
                                    .foregroundStyle(.gray)
                                    .frame(width: 130,height: 90)
                                    .cornerRadius(10)
                                Text("動画タイトル")
                                    .font(.footnote)
                            }
                            VStack(alignment:.leading) {
                                Rectangle()
                                    .foregroundStyle(.gray)
                                    .frame(width: 130,height: 90)
                                    .cornerRadius(10)
                                Text("動画タイトル")
                                    .font(.footnote)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    HStack{
                        if isLeftHand {
                            Button {
                                print("tap")
                            } label: {
                                Text("すべて表示")
                                    .foregroundStyle(.black)
                                    .font(.caption)
                                    .padding(10)
                                    .overlay {
                                                   RoundedRectangle(cornerRadius: 30)
                                                       .stroke(lineWidth: 1)
                                                       .fill(Color.gray)
                                               }
                                               .mask {
                                                   RoundedRectangle(cornerRadius: 30)
                                               }
                            }
                            Spacer()
                        }
                        Text("再生リスト")
                            .font(.title3)
                        if !isLeftHand {
                            Spacer()
                            Button {
                                print("tap")
                            } label: {
                                Text("すべて表示")
                                    .foregroundStyle(.black)
                                    .font(.caption)
                                    .padding(10)
                                    .overlay {
                                                   RoundedRectangle(cornerRadius: 30)
                                                       .stroke(lineWidth: 1)
                                                       .fill(Color.gray)
                                               }
                                               .mask {
                                                   RoundedRectangle(cornerRadius: 30)
                                               }
                            }
                        }
                    }
                    .padding()
                    
                    ScrollView(.horizontal) {
                        HStack{
                            VStack(alignment:.leading) {
                                Rectangle()
                                    .foregroundStyle(.gray)
                                    .frame(width: 130,height: 90)
                                    .cornerRadius(10)
                                Text("高く評価した動画")
                                    .font(.footnote)
                            }
                            VStack(alignment:.leading) {
                                Rectangle()
                                    .foregroundStyle(.gray)
                                    .frame(width: 130,height: 90)
                                    .cornerRadius(10)
                                Text("あとで見る")
                                    .font(.footnote)
                            }
                            VStack(alignment:.leading) {
                                Rectangle()
                                    .foregroundStyle(.gray)
                                    .frame(width: 130,height: 90)
                                    .cornerRadius(10)
                                Text("リスト1")
                                    .font(.footnote)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    HStack {
                        if isLeftHand {
                            Spacer()
                        }
                        Image(systemName: "video")
                            .font(.title3)
                        Text("作成した動画")
                        if !isLeftHand {
                            Spacer()
                        }
                    }
                    .padding()
                    .padding(.top)
                    HStack {
                        if isLeftHand {
                            Spacer()
                        }
                        Image(systemName: "wand.and.stars")
                            .font(.title3)
                        Text("バッジ")
                        if !isLeftHand {
                            Spacer()
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    Divider()
                        .padding(.horizontal)
                    
                    HStack {
                        if isLeftHand {
                            Spacer()
                        }
                        Image(systemName: "movieclapper")
                            .font(.title3)
                        Text("映画とテレビ番組")
                        if !isLeftHand {
                            Spacer()
                        }
                    }
                    .padding()
                    HStack {
                        if isLeftHand {
                            Spacer()
                        }
                        Image(systemName: "play.rectangle")
                            .font(.title3)
                        Text("Youtube Premiumに登録")
                        if !isLeftHand {
                            Spacer()
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                    Divider()
                        .padding(.horizontal)
                    HStack {
                        if isLeftHand {
                            Spacer()
                        }
                        Image(systemName: "chart.bar.xaxis.ascending")
                            .font(.title3)
                        Text("視聴時間")
                        if !isLeftHand {
                            Spacer()
                        }
                    }
                    .padding()
                    HStack {
                        if isLeftHand {
                            Spacer()
                        }
                        Image(systemName: "questionmark.circle")
                            .font(.title3)
                        Text("ヘルプとフィードバック")
                        if !isLeftHand {
                            Spacer()
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                .padding(.top,50)
            }
        }
        .animation(.bouncy(duration: 0.5), value: isLeftHand)
        .overlay(alignment: .top) {
            HStack{
                Spacer()
                HStack(spacing: 15) {
                    if !isLeftHand {
                        Spacer()
                    }
                    Button {
                        print("tap")
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title2)
                            .foregroundStyle(.black)
                    }
                    Button {
                        print("tap")
                    } label: {
                        Image(systemName: "bell")
                            .font(.title2)
                            .foregroundStyle(.black)
                    }
                    Button {
                        print("tap")
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundStyle(.black)
                    }
                    Button {
                        print("tap")
                    } label: {
                        Image(systemName: "gearshape")
                            .font(.title2)
                            .foregroundStyle(.black)
                    }
                    if isLeftHand {
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding()
            .background(Color.white)
            .animation(.bouncy(duration: 0.5), value: isLeftHand)
        }
        .overlay(alignment: .bottom) {
            Text("x:\(x)")
        }
        .onAppear() {
            start()
        }
        .onDisappear() {
            stop()
        }
    }
    func start() {
        if motionManager.isAccelerometerAvailable {
            motionManager.accelerometerUpdateInterval = 0.5
            motionManager.startAccelerometerUpdates(to: .main) { data, error in
                guard let data else { return }
                if data.acceleration.x > 0 {
                    isLeftHand = false
                } else {
                    isLeftHand = true
                }
                x = data.acceleration.x
            }
        }
    }
    func stop() {
        if motionManager.isAccelerometerActive {
            motionManager.stopAccelerometerUpdates()
        }
    }
}
#Preview {
    ContentView()
}
