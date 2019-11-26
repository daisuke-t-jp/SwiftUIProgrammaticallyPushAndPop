//
//  ContentView.swift
//  SwiftUIProgrammaticallyPushAndPop
//
//  Created by Daisuke TONOSAKI on 2019/11/26.
//  Copyright © 2019 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var navigationLinkIsActive = false
    
    var body: some View {
        NavigationView() {
            VStack {
                Button(action: {
                    self.navigationLinkIsActive = true
                }, label: {
                    Text("Push")
                })
                
                NavigationLink(destination: SubView(),
                               isActive: $navigationLinkIsActive,
                               label: {
                    EmptyView()
                })
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
