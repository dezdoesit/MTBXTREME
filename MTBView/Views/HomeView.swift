import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                MTBView()
                    .padding(.bottom, 40)
                ListView()
                    .padding(.bottom)
                NavigationLink{
                    FeatureView()
                } label: {
                    HStack(alignment: .firstTextBaseline) {
                        Text("Complete feature list")
                            .foregroundColor(.green)
                        Image(systemName: "chevron.forward")
                            .imageScale(.small)
                    }
                }
                .padding(.top, 32)
                .foregroundColor(.blue)
                .font(.subheadline)
                Spacer()
                NavigationLink {
                    ARVideoPortalView()
                } label: {
                    Text("Let’s Ride!")
                        .font(.system(.callout, weight: .semibold))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .foregroundColor(.black)
                        .background(.green)
                    .mask { RoundedRectangle(cornerRadius: 16, style: .continuous) }}
                .padding(.vertical, 32.0)
            }
            .frame(maxWidth: .infinity)
            .padding(.top)
            .padding(.bottom)
            .padding(.horizontal)

        }.navigationViewStyle(StackNavigationViewStyle())

    }
}
