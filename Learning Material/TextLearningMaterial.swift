//
//  Text.swift
//  Learning Material
//
//  Created by praveen on 24/01/25.
//

import SwiftUI
let b = 10
let c = 20
var add:Int{
    return b+TextLearningMaterial().count
}
struct TextLearningMaterial: View {
    @State var count:Int = 10
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            VStack{
                ForEach(0..<3){i in
                    HStack{
                        ForEach(0..<3){j in
                            RoundedRectangle(cornerRadius: 10).fill(Color.blue)
                                .frame(width: 50, height: 50)
                        }
                    }
                }
                
                
                Button {
                    count+=1
                } label: {
                    Text("\(count)")
                    //            .font(.callout)//system defined font
                        
                        .font(.system(size: 20, weight: .bold))
                        .frame(width: 200, height: 50)
                    
                        .background(.red)
                    
                        .cornerRadius(20)
                        .foregroundColor(.green)
                        .shadow(color: .blue,radius: 10)
                }

                Text("\(count)")
                //            .font(.callout)//system defined font
                    
                    .font(.system(size: 50, weight: .bold))
                    .frame(width: 300, height: 100)
                
                    .background(.red)
                
                    .cornerRadius(20)
                    .foregroundColor(.green)
                    .shadow(color: .blue,radius: 10)
//                    .offset(x:0,y:0)
                    
                    
            }
            .onAppear{
                print(add)
            }
        }
        
        
    }
}

#Preview {
    TextLearningMaterial()
}
