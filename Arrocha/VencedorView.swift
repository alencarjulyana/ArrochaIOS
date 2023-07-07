

import SwiftUI

struct VencedorView: View {
    @ObservedObject var ArrochaVM: ArrochaViewModel

    var body: some View {
        VStack {
            Spacer()
            Text("Você Ganhou!!")
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

struct VencedorView_Previews: PreviewProvider {
    static var previews: some View {
        VencedorView(ArrochaVM: ArrochaViewModel())
    }
}
