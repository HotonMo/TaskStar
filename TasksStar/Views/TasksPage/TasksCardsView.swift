//
//  TasksCardView.swift
//  TasksStar
//
//  Created by hoton on 18/06/1444 AH.
//

import SwiftUI
struct MainCardView: View {
    @EnvironmentObject var taskViewModel : TasksViewModel
   
    
    var body: some View {
        
        HStack(alignment: .center) {
            Image("bigstar")
                .resizable()
                .frame(width: 450, height: 330)
            Spacer()
            VStack{
                Text("Keep Goining")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    ProgressBar(completed: taskViewModel.ProgressBarValue)
            }.padding()
          
   
        }.modifier(MainCardModifier()) // Main Card
        
    }
}

struct TasksCardsView: View {
    @EnvironmentObject var taskViewModel : TasksViewModel
    let task : TasksModel
    var body: some View {
        HStack(alignment: .center) {
            ZStack{
                Image("Image")
                    .resizable()
              
                Text("+ 10 Stars")
                    .font(.system(size: 20, weight: .bold))
                    .position(.init(x: 55 , y: 30))
                
            }  .padding(.all, 20)
                .frame(width: 250, height: 130)
            
            Text(task.TaskName)
                .font(.system(size: 26, weight: .bold, design: .default))
              
            Spacer()
          
            Image(systemName: task.CheckTask ? "checkmark.circle" : "circle") .foregroundColor(task.CheckTask ? .green : .gray)
                .font(.title)
                .padding(50)
        }.modifier(CardModifier())

        

       
    }
}

struct TasksView_Previews: PreviewProvider {
    
    static var item1 = TasksModel(TaskName: "Task1", CheckTask: true)
    static var previews: some View {
        Group {
            MainCardView()
            TasksCardsView(task: item1)
        } .environmentObject(TasksViewModel())
    }
}
