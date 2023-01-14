//
//  First veiw .swift
//  TaskStar
//
//  Created by amalghurm on 15/06/1444 AH.
//

import SwiftUI

struct FirstPage: View {
    @StateObject var taskViewModel : TasksViewModel = TasksViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                Image("MainBackground")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    
                    NavigationLink(destination: TasksPageView().environmentObject(taskViewModel),
                                   label:{ Text("My Tasks")}).font(.title) .frame(width:324, height: 100)
                        .foregroundColor(.white)
                        .background(Color("MainButton"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    
                    
                    NavigationLink(destination: AchivmentPageView(),label:{      ZStack(alignment:.leading){
                        
                        HStack(alignment:.center, spacing:20){
                            Image("badge")
                            Text("My Achivment")
                             
                            
                        }   .font(.title)
                            .foregroundColor(Color.black)
                            .frame(width: 324, height: 100.0)
                            .background(Rectangle().fill(Color("SecondaryButton")))
                        
                    
                        
                    }}).font(.title)
                        .frame(width:324, height: 100)
                        .foregroundColor(.black)
                        .background(Color("SecondaryButton"))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    
                }.padding(.bottom,600)}
        }
        .accentColor(.black).navigationBarBackButtonHidden(true)
           
    }
}

struct First_veiw__Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
            
    }
}
