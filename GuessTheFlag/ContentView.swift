//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Eric Kuo on 2022/11/12.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        ZStack {
            //LinearGradient(gradient: Gradient(stops: [.init(color: .white, location: 0.45), .init(color: .black, location: 0.55)]), startPoint: .top, endPoint: .bottom)
            //RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 10, endRadius: 300)
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                
            VStack {
                Button("Button 1") { }
                    .buttonStyle(.bordered)
                Button("Button 2", role: .destructive) { }
                    .buttonStyle(.bordered)
                Button("Button 3") { }
                    .buttonStyle(.borderedProminent)
                Button("Button 4", role: .destructive) { }
                    .buttonStyle(.borderedProminent)
                    .tint(.primary)
                Button {
                    print("Button was tapped")
                } label: {
                    Text("Tap me!")
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                }
                Button {
                    print("Edit button was tapped")
                } label: {
                    Label("Edit", systemImage: "pencil")
                }
                Button ("Show Alert") {
                    showingAlert = true
                }
                // first part: alert title
                //another two-way data binding because SwiftUI will automatically set showingAlert back to false when the alert is dismissed.
                .alert("Important message", isPresented: $showingAlert) {
                    Button("Delete", role: .destructive) {}
                    Button("Cancel", role: .cancel) {}
                    //any button inside an alert will automatically dismiss the alert
                    //that empty closure is there to let us add any extra functionality beyond just dismissing the alert.
                } message: {
                    Text("Please read this.")
                }
            }
            //Text("Your content")
               // .bold()
               // .foregroundStyle(.secondary)
               // .padding(50)
                //.background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
