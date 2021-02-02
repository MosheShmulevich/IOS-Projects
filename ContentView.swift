//
//  ContentView.swift
//  First App
//
//  Created by Moshe Shmulevich on 02/02/2021.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var TipPercent: Double = 15.0
    var body: some View {
        VStack {
                Text("Tip Calculator")
                    .font(.title)
            HStack{
                Text("₪")
                TextField("Total", text: $total)
                    .border(Color.black)
            }
            .padding()
            HStack{
                Slider(value: $TipPercent, in: 1...30, step: 1.0)
                Text("\(Int(TipPercent))%")
            }
            .padding()
            if let TotalNum = Double(total){
            Text("Tip Amount: \(TotalNum * TipPercent / 100, specifier: "%0.2f")")
            }
            else{
                Text("Please enter a valid numerical value.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
