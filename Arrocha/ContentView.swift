//
//  ContentView.swift
//  Arrocha
//
//
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var ArrochaVM: ArrochaViewModel

    var body: some View {
        if self.ArrochaVM.gameStatus == .jogando {
            ArrochaView(ArrochaVM: self.ArrochaVM)
        } else if self.ArrochaVM.gameStatus == .ganhou {
            VencedorView(ArrochaVM: self.ArrochaVM)
        } else {
            PerdedorView(ArrochaVM: self.ArrochaVM)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(ArrochaVM: ArrochaViewModel())
    }
}
