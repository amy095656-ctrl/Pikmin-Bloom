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