import SwiftUI

struct FeatureView: View {
    @State private var mtbPulse: Bool = false
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("RealityKit/ARKit")
                    HStack{
                        Image("FunnyFace")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250)
                    }
                }
                VStack{
                    Text("Custom SFSymbols")
                    HStack{
                        Image("SymbolsSC")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250)
                    }
                }
            }
            HStack{
                VStack{
                    Text("New Symbol Effects!")
                    HStack{
                        Image("B(SSC)-symbol")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250)
                            .padding(.top, 25)
                            .symbolEffect(
                                .scale.up,
                                options: .repeating,
                                isActive: mtbPulse
                            )
                            .onAppear(){
                                mtbPulse = true
                            }
                    }
                }
                VStack{
                    Text("MVVM Architecture")
                    HStack{
                        Image("MVVM")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250)
                    }
                }

            }
        }

    }
}

#Preview{
    FeatureView()
}
