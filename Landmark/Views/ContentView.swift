//
//  ContentView.swift
//  Landmark
//
//  Created by mai ng on 8/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges:.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                
                Text("California")
                    .font(.subheadline)
            }
            .padding()
            
            //Add a spacer at the bottom of the outer VStack to push the content to the top of the screen.
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
