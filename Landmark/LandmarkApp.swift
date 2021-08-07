//
//  LandmarkApp.swift
//  Landmark
//
//  Created by mai ng on 8/5/21.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()

       var body: some Scene {
           WindowGroup {
               ContentView()
                   .environmentObject(modelData)
           }
       }
   }
