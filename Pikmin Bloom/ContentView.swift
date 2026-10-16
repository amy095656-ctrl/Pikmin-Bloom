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

//（對應）2-3. 徽章區
struct BadgeCategoryView: View {
    let title: String
    let image1: String
    var image2: String? = nil
    var image3: String? = nil
    var image4: String? = nil

    var body: some View {
        ZStack {

            VStack {
                HStack(spacing: 10) {
                    Rectangle()
                        .fill(.white.opacity(0.5))
                        .frame(height: 1)
                        .padding(18)
                    Text(title)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    Rectangle()
                        .fill(.white.opacity(0.5))
                        .frame(height: 1)
                        .padding(18)
                }
                HStack(spacing: 13) {
                    Image(image1)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 55, height: 55)
                    if let image2 = image2 {
                        Image(image2)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                    }
                    if let image3 = image3 {
                        Image(image3)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                    }
                    if let image4 = image4 {
                        Image(image4)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 55, height: 55)
                    }
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



#Preview {
    ProfileView()
}
#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
