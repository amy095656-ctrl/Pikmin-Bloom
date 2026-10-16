//
//  ProfileView.swift
//  Pikmin Bloom
//
//  Created by 115-1Student04 on 2026/10/16.
//


import Playgrounds
import SwiftUI

//（對應）2-2. 個人資料區
struct ProfileView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 20)
                .fill(.ultraThinMaterial)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white.opacity(0.05))
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 1)
                )

            VStack(alignment: .leading) {
                HStack(spacing: 1) {
                    Image("badge_level37")
                        .resizable()
                        .frame(width: 82, height: 80)
                    VStack(alignment: .leading, spacing: 6) {
                        Text("HU")
                            .font(.system(size: 26, weight: .bold))
                            .foregroundStyle(.white)
                        Text(
                            """
                            帳號ID: RcLVQvlcSpOg
                            合計步數：1,392,464
                            """
                        )
                        .font(.system(size: 15, weight: .light))
                        .foregroundStyle(.white)
                        .lineSpacing(5)
                    }
                }
                .padding(1)

                VStack(alignment: .leading, spacing: 8) {
                    Path { path in
                        path.move(to: CGPoint(x: 2, y: 0))
                        path.addLine(to: CGPoint(x: 345, y: 0))
                    }
                    .stroke(
                        Color(.white),
                        style: StrokeStyle(lineWidth: 1, dash: [4])
                    )
                    .frame(width: 343, height: 2)

                    Text("下一個升級的目標......")
                        .font(.system(size: 22))
                        .foregroundStyle(.white)
                    
                    //進度條
                    ZStack(alignment: .leading) {
                        ProgressBar(
                            value: 8,
                            total: 10,
                            color: Color(
                                red: 251 / 255,
                                green: 126 / 255,
                                blue: 126 / 255
                            ),
                            height: 36
                        )

                        HStack(spacing: 21) {
                            Image("icon_pikmin")
                            (Text("培育") + Text("10隻").bold() + Text("皮克敏吧"))
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                        }
                        .padding(.horizontal, 13)
                    }
                    HStack {
                        Spacer()
                        Text("還差 2 隻")
                            .font(.system(size: 18))
                            .foregroundStyle(.white.opacity(0.9))
                    }

                    ZStack {
                        ProgressBar(
                            value: 536,
                            total: 536,
                            color: Color(
                                red: 0 / 255,
                                green: 194 / 255,
                                blue: 150 / 255
                            ),
                            height: 36
                        )
                        HStack(spacing: 130) {
                            HStack(spacing: 21) {
                                Image("icon_foot")
                                (Text("行走") + Text("536K").bold() + Text("步吧"))
                                    .font(.system(size: 20))
                                    .foregroundStyle(.white)
                            }
                            Image("icon_tick")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 16, height: 16)
                        }

                    }
                }
            }
            .padding(18)
        }
    }
}
