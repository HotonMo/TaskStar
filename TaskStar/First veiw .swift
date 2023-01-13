//
//  First veiw .swift
//  TaskStar
//
//  Created by amalghurm on 15/06/1444 AH.
//

import SwiftUI

struct First_veiw_: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("EP").ignoresSafeArea()
                VStack{
                    
                    
                    NavigationLink(destination: Achivment_(),label:{ Text("My Tasks")}).font(.title) .frame(width:324, height: 100)
                        .foregroundColor(.white)
                        .background(Color.ui.red1)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    
                    NavigationLink(destination: Achivment_(),label:{      ZStack(alignment:.leading){
                        
                        HStack(alignment:.center, spacing:20){
                            Image("medal1")
                            Text("My Achivment")
                             
                            
                        }   .font(.title)
                            .foregroundColor(Color.black)
                            .frame(width: 324, height: 100.0)
                            .background(Rectangle().fill(Color.ui.yellow1))
                        
                    
                        
                    }}).font(.title)
                        .frame(width:324, height: 100)
                        .foregroundColor(.black)
                        .background(Color.ui.yellow1)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    
                }.padding(.bottom,600)}
        }.accentColor(.black).navigationBarBackButtonHidden(true)
    }
}

struct First_veiw__Previews: PreviewProvider {
    static var previews: some View {
        First_veiw_()
            
    }
}
