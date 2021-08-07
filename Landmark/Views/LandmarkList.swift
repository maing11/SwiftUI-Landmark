//
//  LandmarkList.swift
//  Landmark
//
//  Created by mai ng on 8/6/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //pass the model data’s landmarks array to the List initializer.
        List(landmarks) {
            landmark in
            LandmarkRow(landmark: landmark)
            
        }
        
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
