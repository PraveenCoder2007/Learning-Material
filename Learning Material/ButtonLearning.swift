//
//  ButtonLearning.swift
//  Learning Material
//
//  Created by praveen on 24/01/25.
//

import SwiftUI

struct ButtonLearning: View {
    @State  var isLiked = false
    @State  var isSubscribed = false
    
    var body: some View {
        VStack(spacing: 20) {

            Button(action: {
                isLiked.toggle()
            }) {
                Text(isLiked ? "Liked" : "Like")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                isSubscribed.toggle()
            }) {
                Text(isSubscribed ? "Subscribed" : "Subscribe")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    ButtonLearning()
}
