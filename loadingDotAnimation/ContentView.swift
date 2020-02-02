//
//  ContentView.swift
//  loadingDotAnimation
//
//  Created by PRIYANS on 3/2/20.
//  Copyright © 2020 PRIYANS. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var appearAnimation = false
    @State private var opacityAnimation = false
    var speed: Double = 1.5
    var heightAndWidth: CGFloat = 30
    var body: some View {
        VStack {
            VStack {
                Text("Interpolating Animation!")
                    .font(.largeTitle)
                    .foregroundColor(Color("text"))
                    .underline()
                HStack {
                    Circle()
                        .foregroundColor(Color("one"))
                        .frame(width: heightAndWidth, height: heightAndWidth)
                        .offset(x: 0, y: appearAnimation ? 0 : -100) .animation(Animation.interpolatingSpring(stiffness: 150, damping: 5).repeatForever(autoreverses: false).delay(0.02))
                    Circle()
                        .foregroundColor(Color("two"))
                        .frame(width: heightAndWidth, height: heightAndWidth)
                        .offset(x: 0, y: appearAnimation ? 0 : -100) .animation(Animation.interpolatingSpring(stiffness: 150, damping: 5).repeatForever(autoreverses: false).delay(0.06))
                    Circle()
                        .foregroundColor(Color("three"))
                        .frame(width: heightAndWidth, height: heightAndWidth)
                        .offset(x: 0, y: appearAnimation ? 0 : -100)
                        .animation(Animation.interpolatingSpring(stiffness: 150, damping: 5).repeatForever(autoreverses: false).delay(0.08))
                    Circle()
                        .foregroundColor(Color("four"))
                        .frame(width: heightAndWidth, height: heightAndWidth)
                        .offset(x: 0, y: appearAnimation ? 0 : -100)
                        .animation(Animation.interpolatingSpring(stiffness: 150, damping: 5).repeatForever(autoreverses: false).delay(0.1))
                    Circle()
                        .foregroundColor(Color("five"))
                        .frame(width: heightAndWidth, height: heightAndWidth)
                        .offset(x: 0, y: appearAnimation ? 0 : -100)
                        .animation(Animation.interpolatingSpring(stiffness: 150, damping: 5).repeatForever(autoreverses: false).delay(0.12))
                    
                    
                }.padding(.bottom, 150)
            }
            
            
            
            VStack {
                Text("Opacity Animation!")
                    .font(.largeTitle)
                    .foregroundColor(Color("text"))
                    .underline()
                HStack {
                    Circle()
                        .foregroundColor(Color("one"))
                        .frame(width: 30, height: 30)
                        .opacity(opacityAnimation ? 0 : 1)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.1 / speed))
                    
                    Circle()
                        .foregroundColor(Color("two"))
                        .frame(width: 30, height: 30)
                        .opacity(opacityAnimation ? 0 : 1)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.3 / speed))
                    Circle()
                        .foregroundColor(Color("three"))
                        .frame(width: 30, height: 30)
                        .opacity(opacityAnimation ? 0 : 1)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.5 / speed))
                    Circle()
                        .foregroundColor(Color("four"))
                        .frame(width: 30, height: 30)
                        .opacity(opacityAnimation ? 0 : 1)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.7 / speed))
                    Circle()
                        .foregroundColor(Color("five"))
                        .frame(width: 30, height: 30)
                        .opacity(opacityAnimation ? 0 : 1)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.9 / speed))
                    
                }.padding(.bottom, 150)
            }
            
            
            VStack {
                Text("Pulsing & Color Animation!")
                    .font(.largeTitle)
                    .foregroundColor(Color("text"))
                    .underline()
                HStack {
                    Circle()
                        .foregroundColor(appearAnimation ? Color("one") : Color("two"))
                        .frame(width: appearAnimation ? 30 * 1.2 : 30, height: appearAnimation ? 30 * 1.2 : 30)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.1))
                    
                    Circle()
                        .foregroundColor(appearAnimation ? Color("two") : Color("three"))
                        .frame(width: appearAnimation ? 30 * 1.2 : 30, height: appearAnimation ? 30 * 1.2 : 30)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.2))
                    Circle()
                        .foregroundColor(appearAnimation ? Color("three") : Color("four"))
                        .frame(width: appearAnimation ? 30 * 1.2 : 30, height: appearAnimation ? 30 * 1.2 : 30)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.3))
                    Circle()
                        .foregroundColor(appearAnimation ? Color("four") : Color("five"))
                        .frame(width: appearAnimation ? 30 * 1.2 : 30, height: appearAnimation ? 30 * 1.2 : 30)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.4))
                    Circle()
                        .foregroundColor(appearAnimation ? Color("five") : Color("six"))
                        .frame(width: appearAnimation ? 30 * 1.2 : 30, height: appearAnimation ? 30 * 1.2 : 30)
                        .animation(Animation.easeInOut(duration: 1.0 / speed).repeatForever().delay(0.5))
                }
            }
            
            
            
        }
        .onAppear(){
            self.appearAnimation.toggle()
            self.opacityAnimation.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

