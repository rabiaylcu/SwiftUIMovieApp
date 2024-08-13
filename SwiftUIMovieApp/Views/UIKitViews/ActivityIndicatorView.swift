//
//  ActivityIndicatorView.swift
//  SwiftUIMovieApp
//
//  Created by Rabia Yolcu on 12.08.2024.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable{
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
}
