//
//  LoadingView.swift
//  Weather Show
//
//  Created by Youssef Eldeeb on 13/05/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
            .preferredColorScheme(.dark)
    }
}
