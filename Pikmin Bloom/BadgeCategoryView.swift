import Playgrounds
import SwiftUI

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