import Playgrounds
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            //1. 底圖
            Image("wallpaper")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            //2. 中間可捲動的區塊
            ScrollView(.vertical) {
                VStack(spacing: 10) {
                    Color.clear.frame(height: 280)  //預留頂部人物展示的空間

                    //2-1. 編輯Mii的按鈕
                    Text("編輯Mii")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 15)
                        .background(
                            Capsule()
                                .fill(.ultraThinMaterial)
                                .overlay(
                                    Capsule()
                                        .fill(Color.white.opacity(0.05))
                                )
                                .overlay(
                                    Capsule()
                                        .stroke(Color.white, lineWidth: 1)
                                )
                        )
                        .padding(.trailing, 6)
                        .frame(maxWidth: .infinity, alignment: .trailing)

                    //2-2. 個人資料區
                    ProfileView()

                    //2-3. 徽章區
                    ZStack {
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
                        VStack {
                            BadgeCategoryView(
                                title: "社群日徽章",
                                image1: "badge_socialday1"
                            )
                            BadgeCategoryView(
                                title: "飾品皮克敏徽章",
                                image1: "badge_decor1",
                                image2: "badge_decor2",
                                image3: "badge_decor3",
                                image4: "badge_unknown"
                            )
                            BadgeCategoryView(
                                title: "步數徽章",
                                image1: "badge_step1",
                                image2: "badge_step2",
                                image3: "badge_step3",
                                image4: "badge_unknown"
                            )
                            BadgeCategoryView(
                                title: "皮克敏徽章",
                                image1: "badge_pikmin1",
                                image2: "badge_pikmin1",
                                image3: "badge_unknown"
                            )
                            BadgeCategoryView(
                                title: "種花徽章",
                                image1: "badge_flower1",
                                image2: "badge_flower2",
                                image3: "badge_unknown"
                            )
                            BadgeCategoryView(
                                title: "探險徽章",
                                image1: "badge_expedition1",
                                image2: "badge_expedition2",
                                image3: "badge_unknown"
                            )
                            BadgeCategoryView(
                                title: "蘑菇徽章",
                                image1: "badge_marshroom1",
                                image2: "badge_unknown"
                            )
                            BadgeCategoryView(
                                title: "友誼徽章",
                                image1: "badge_friendship1",
                                image2: "badge_unknown"
                            )
                        }
                        .padding(.vertical, 20)
                    }
                }
                .padding(.horizontal, 16)
            }

            //3. 頂層、底層固定浮動的按鈕
            VStack {
                HStack {
                    //3-1. 好友按鈕
                    HStack(spacing: 1) {
                        HStack(spacing: -10) {
                            ZStack {
                                Circle()
                                    .frame(width: 27, height: 27)
                                    .foregroundStyle(.white)
                                Text("1 2")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundStyle(.black)
                            }
                            .padding(5)
                            Image("friend2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 27, height: 27)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(.white, lineWidth: 2))
                                .zIndex(1)
                            Image("friend1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 27, height: 27)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(.white, lineWidth: 2))
                        }
                        .padding(.leading, 4)

                        Text("好友")
                            .font(.system(size: 15))
                            .foregroundStyle(.white)
                            .padding(.horizontal, 6)
                    }
                    .padding(.horizontal, 11)
                    .padding(.vertical, 1)
                    .background(
                        Capsule()
                            .fill(
                                Color(
                                    red: 134 / 255,
                                    green: 184 / 255,
                                    blue: 185 / 255
                                )
                            )
                            .background(.ultraThinMaterial, in: Capsule())
                    )
                    .overlay(
                        Capsule().stroke(.white.opacity(0.8), lineWidth: 1)
                    )
                    .shadow(color: .black.opacity(0.15), radius: 3, y: 2)

                    Spacer()

                    //3-2.設定按鈕
                    Image(systemName: "gearshape.fill")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundStyle(.white)
                        .padding(8)
                        .background(
                            Circle()
                                .fill(
                                    Color(
                                        red: 134 / 255,
                                        green: 184 / 255,
                                        blue: 185 / 255,
                                        opacity: 0.85
                                    )
                                )
                                .background(.ultraThinMaterial, in: Circle())
                        )
                        .overlay(
                            Circle().stroke(.white.opacity(0.2), lineWidth: 1)
                        )
                        .shadow(color: .black.opacity(0.15), radius: 3, y: 2)
                }
                .padding(.horizontal, 25)
                .padding(.top, 70)

                Spacer()

                //3-3. 關閉按鈕
                HStack {
                    Image(systemName: "xmark")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundStyle(.white)
                        .padding(18)
                        .background(
                            Circle()
                                .fill(
                                    Color(
                                        red: 134 / 255,
                                        green: 184 / 255,
                                        blue: 185 / 255,
                                        opacity: 0.85
                                    )
                                )
                                .background(.ultraThinMaterial, in: Circle())
                        )
                        .overlay(
                            Circle().stroke(.white.opacity(0.2), lineWidth: 3)
                        )
                        .shadow(color: .black.opacity(0.15), radius: 3, y: 2)
                        .padding(.leading, 20)
                        .padding(.bottom, 50)

                    Spacer()
                }
            }
        }
    }
}







#Preview {
    BadgeCategoryView(
        title: "飾品",
        image1: "badge_decor1",
        image2: "badge_decor2",
        image3: "badge_decor3",
        image4: "badge_step1"
    )
    BadgeCategoryView(title: "社群日", image1: "badge_socialday")
}


#Preview {
    ProfileView()
}
#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
