//
//  Bootcamp53.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by newtan on 2022-05-31.
//

import SwiftUI

// Async image in iOS15
struct Bootcamp53: View {
    
    // Show a different photo in every request
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        //loadImageWay1
        //loadImageWay2
        loadImageWay3
    }
}

struct Bootcamp53_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp53()
    }
}

extension Bootcamp53 {
    
    var loadImageWay1: some View {
        // Problem: The image resizes
        AsyncImage(url: url)
            .frame(width: 200, height: 200)
    }
    
    var loadImageWay2: some View {
        AsyncImage(url: url,
                   content: { returnedImage in
          returnedImage // of type Image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
        }, placeholder: {
            ProgressView()
        })
    }
    
    var loadImageWay3: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}
