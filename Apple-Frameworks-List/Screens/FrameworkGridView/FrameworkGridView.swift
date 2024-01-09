//
//  FrameworkGridView.swift
//  Apple-Frameworks-List
//
//  Created by macbook on 09.01.24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(MockData.frameworks) {  framework in
                        NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            .navigationTitle("🍎 Frameworks")
            }
        .accentColor(Color(.label))
        }
    }


#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
    
