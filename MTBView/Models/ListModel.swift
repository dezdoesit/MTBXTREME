//
//  ListModel.swift
//  MTBView
//
//  Created by dmoney on 5/6/24.
//

import SwiftUI

struct ListItem: Identifiable {
    var id = UUID()
    var symbol: String
    var title: String
    var subtitle: String
}

class listItemStore: ObservableObject {

    @Published var listItems: [ListItem] = [

        ListItem(symbol: "bicycle", title: "Welcome To MTB X-TREME", subtitle: "Biking is a great way to experience nature and get exercise! This app was created to allow others to experience the joy I feel while mountain biking."),
        ListItem(symbol: "visionpro", title: "Feel The Thrill", subtitle: "Experience the joy of mountain biking! Look around and enjoy the view."),
        ListItem(symbol: "exclamationmark.triangle.fill", title: "Warning", subtitle: "This app will use your camera and the footage could cause motion sickness for some, Press Let's Ride! to feel the track."),
        ListItem(symbol: "sparkles", title: "Thank you!", subtitle: "Thanks for viewing! For more information see the link below...")
    ]
}

