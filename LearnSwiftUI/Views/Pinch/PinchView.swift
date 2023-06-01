//
//  PinchView.swift
//  LearnSwiftUI
//
//  Created by Asif Khan on 30/05/2023.
//

import SwiftUI

struct PinchView: View {
    
    //MARK: - Properties
    @State private var isAnimating: Bool = false
    @State private var imageScale : CGFloat = 1
    @State private var ImageOffset : CGSize = CGSize(width: 0, height: 0)
    
    //MARK: - Function
    func resetImageState(){
        return withAnimation(.spring()){
            imageScale = 1
            ImageOffset = .zero
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.clear
                //MARK: - PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12,x:2, y:2)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x: ImageOffset.width,y: ImageOffset.height)
                    .scaleEffect(imageScale)
                //MARK: - 1. Tap Gesture
                    .onTapGesture(count: 2) {
                        if imageScale == 1 {
                            withAnimation(.spring()){
                                imageScale = 5
                            }
                        }else{
                            resetImageState()
                        }
                    }
                //MARK: - 2. Drag Gesture
                    .gesture(
                        DragGesture()
                            .onChanged({ value  in
                                withAnimation(.linear(duration: 1)){
                                    ImageOffset = value.translation
                                }
                            })
                            .onEnded{ _ in
                                if imageScale <= 1 {
                                    resetImageState()
                                }}
                    )
            } //: ZSTACK
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                withAnimation(.linear(duration: 1)){
                    isAnimating = true
                }
            }
            
            //MARK: - INFO Panel
            .overlay(
                InfoPanelView(scale: imageScale, offset: ImageOffset),alignment: .top
            )
            
        }.navigationViewStyle(.stack)
    }
}

struct PinchView_Previews: PreviewProvider {
    static var previews: some View {
        PinchView()
    }
}
