import SwiftUI

struct PerdedorView: View {
    @ObservedObject var ArrochaVM: ArrochaViewModel

    var body: some View {
        VStack {
            Spacer()
            Text("Você Perdeu!!")
            .padding()
                .font(.largeTitle)
            Spacer()
            Button("Jogue Novamente") {
                self.ArrochaVM.reset()
            }
            Spacer()
        }
    }
}

struct PerdedorView_Previews: PreviewProvider {
    static var previews: some View {
        PerdedorView(ArrochaVM: ArrochaViewModel())
    }
}
