//
//  MapAnnotationView.swift
//  Africa_SwiftUI
//
//  Created by Georgie Muler on 07.03.2023.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var location: NAtionalParkLocation
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        } // Zstack
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    
    static var locations: [NAtionalParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
