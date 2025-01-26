//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Ananta Singh on 25/01/25.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth : .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
