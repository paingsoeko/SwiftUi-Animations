import SwiftUI

struct ProgressBarSplashScreenView: View {
    @State private var isActive = false
    @State private var progressValue: Double = 0.0
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
            
                Color.black
                    .ignoresSafeArea()

                VStack {
        
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .frame(width: 100, height: 100)
                        
                        Text("\(Int(progressValue))%")
                            .foregroundColor(.black)
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .animation(.easeInOut(duration: 0.1))
                    }
                    .padding(.bottom, 20)

                   
                    HStack {
                        ProgressView(value: progressValue, total: 100)
                            .progressViewStyle(LinearProgressViewStyle(tint: .white))
                            .frame(width: 200)
                    }
                    .padding(.bottom, 20)

                    Text("Loading...")
                        .foregroundColor(.white)
                }
                .onAppear {
                    startLoading()
                }
            }
        }
    }
    
    // Function to simulate loading progress
    func startLoading() {
        Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            self.progressValue += 1
            if self.progressValue >= 100 {
                timer.invalidate()
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}


struct ProgressBarSplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarSplashScreenView()
    }
}
