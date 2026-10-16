//
//  ProgressBar.swift
//  Pikmin Bloom
//
//  Created by 115-1Student04 on 2026/10/16.
//
import Playgrounds
import SwiftUI

//（對應）2-2. 個人資料區
struct ProgressBar: View {
    let value: Double 
    let total: Double
    let color: Color
    let height: CGFloat

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Capsule()
                    .fill(Color.white.opacity(0.15))

                Rectangle()
                    .fill(color)
                    .frame(
                        width: min(
                            CGFloat(self.value / self.total)
                                * geometry.size.width,
                            geometry.size.width
                        )
                    )
            }
        }
        .frame(height: height)
        .clipShape(Capsule())
    }
}
