//
//  Bootcamp15.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-08.
//

import SwiftUI

// LazyVGrid
struct Bootcamp15: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.orange)
                .frame(height: 200)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.green)
                        .padding()
                    ) {
                        ForEach(0..<10) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<23) { index in
                            Rectangle()
                                .fill(Color.blue)
                                .frame(height: 150)
                        }
                    }
                })
        }
    }
}

struct Bootcamp15_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp15()
            .previewInterfaceOrientation(.portrait)
    }
}
