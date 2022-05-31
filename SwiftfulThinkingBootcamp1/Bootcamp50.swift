//
//  Bootcamp50.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-30.
//

import SwiftUI
// EnvironmentObject

// 1. ObservedObject
// 2. StateObject
// 3. EnvironmentObject

// Main view class that contains the common data
class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(
            contentsOf: ["iPhone", "iPad", "iPod", "iMac", "Apple Watch"])
    }
}


struct Bootcamp50: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        //destination: DetailViewBootcamp50(selectedItem: item, viewModel: viewModel),
                        destination: DetailViewBootcamp50(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }
            .navigationTitle("iOS Devices")
        }
        // Way 2: Using an EnvironmentObject, so all subviews of this (by NavigationView) will have access to it.
        .environmentObject(viewModel)
    }
}

struct DetailViewBootcamp50: View {
    
    let selectedItem: String
    
    // Way 1: Using an ObservedObject
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            Color.orange.edgesIgnoringSafeArea(.all)
            
            // foreground
            NavigationLink(
                //destination: FinalViewBootcamp50(viewModel: viewModel),
                destination: FinalViewBootcamp50(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                })
        }
    }
}

struct FinalViewBootcamp50: View {
    
    // Way 1: Using an ObservedObject.  For 1 or 2 screens.
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    // Way 2: Using an EnvironmentObject. We need to already have it added to a parent view.
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(
                gradient: Gradient(colors: [Color.green, Color.blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { data in
                        Text(data)
                    }
                }
                .foregroundColor(.white)
                .font(.headline)
            }
        }
    }
}

struct Bootcamp50_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp50()
        //DetailViewBootcamp50(selectedItem: "iPod")
        //FinalViewBootcamp50()
    }
}
