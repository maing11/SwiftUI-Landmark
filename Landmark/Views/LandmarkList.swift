//
//  LandmarkList.swift
//  Landmark
//
//  Created by mai ng on 8/6/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //Embed the dynamically generated list of landmarks in a NavigationView.
        NavigationView {
            List(landmarks) {landmark in
                //, wrap the returned row in a NavigationLink, specifying the LandmarkDetail view as the destination.
                NavigationLink(
                    destination: LandmarkDetail()) {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            //set the title of the navigation bar when displaying the list.
            .navigationTitle("Landmarks")
        }
        
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
