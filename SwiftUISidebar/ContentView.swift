//
//  ContentView.swift
//  SwiftUISidebar
//
//  Created by Kristaps Grinbergs on 19/10/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        NavigationLink {
          DetailView(title: "About")
        } label: {
          Label("About", systemImage: "info.circle")
        }
        
        NavigationLink {
          DetailView(title: "Settings")
        } label: {
          Label("Settings", systemImage: "gear")
        }
      }
      .listStyle(SidebarListStyle())
      .navigationTitle("Sidebar")
      
      Text("Please select a section")
        .font(.largeTitle)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
        .previewDevice("iPhone 13 Pro")
      
      ContentView()
        .previewDevice("iPad Pro (11-inch) (3rd generation)")
        .previewInterfaceOrientation(.landscapeLeft)
      
      ContentView()
        .previewDevice("iPad Pro (11-inch) (3rd generation)")
        .previewInterfaceOrientation(.portrait)
    }
  }
}
