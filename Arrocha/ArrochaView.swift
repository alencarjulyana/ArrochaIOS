//
//  TheRockView.swift
//  TheRock
//
//  Created by ifpb on 12/06/23.
//

import SwiftUI

struct TheRockView: View {
    @ObservedObject var theRockVM: TheRockViewModel
    @State var chute: String = ""

    var body: some View {
        VStack {
            Spacer()
            limites
            Text(String(self.theRockVM.definedNum))
            Spacer()
            chuteInput
            chuteButton
            Spacer()
            status
            Spacer()
        }
    }
}

extension TheRockView {
    var limites: some View {
        HStack {
            Text(self.theRockVM.minLimit.description).padding()
            Text(self.theRockVM.maxLimit.description).padding()
        }
    }
    
    var chuteInput: some View {
        TextField("Chute", text: self.$chute).padding().textFieldStyle(RoundedBorderTextFieldStyle())
    }

    var chuteButton: some View {
        Button("Chutar"){
            self.theRockVM.chute(chute: Int(self.chute) ?? 0)
        }
    }

    var status: some View {
        VStack {
            Text("Seu chute foi \(self.theRockVM.chuteStatus.rawValue)").padding()
            Text("Status do jogo: \(self.theRockVM.gameStatus.rawValue)").padding()
        }
    }
}

struct TheRockView_Previews: PreviewProvider {
    static var previews: some View {
        TheRockView(theRockVM: TheRockViewModel())
    }
}
