//
//  DetailView.swift
//  SwiftUISidebar
//
//  Created by Kristaps Grinbergs on 20/10/2021.
//

import SwiftUI

struct DetailView: View {
  let title: String
  var body: some View {
    Text(title)
      .font(.largeTitle)
      .navigationTitle(title)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(title: "Detail View")
  }
}
