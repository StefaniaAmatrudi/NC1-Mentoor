//
//  Home.swift
//  Fake_mentoor
//
//  Created by Stefania Amatrudi on 22/11/22.
//

import SwiftUI

struct Home: View {
    
    @State var currentDate: Date = Date()
    var body: some View {
        
        
        ScrollView(.vertical,showsIndicators: false){
            
            VStack(spacing: 20){
                
                // Custom date picker
                CustomDatePicker(currentDate: $currentDate)
                
            }
            .padding(.vertical)
        }
        
        //Safe area View
        .safeAreaInset(edge: .bottom){
            
            HStack{
                
                Button{
                    
                } label: {
                    
                    Text("Add Task")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.orange,in:Capsule())
                }
                Button{
                    
                } label: {
                    
                    Text("Add Reminder")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.purple,in:Capsule())
                }
                


            }
            
            .padding(.horizontal)
            .padding(.top, 10)
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
        }
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
