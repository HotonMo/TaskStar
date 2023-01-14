import SwiftUI

struct TasksPageView: View {
    @EnvironmentObject var taskViewModel : TasksViewModel

    var body: some View {
        NavigationStack{
            MainCardView()
            
            ScrollView(.vertical){
                ForEach(taskViewModel.TaskList.sorted{$1.CheckTask && !$0.CheckTask}) { CurrentTask in
                    TasksCardsView(task:CurrentTask)
                        .onTapGesture {
                            withAnimation(.linear){
                                taskViewModel.UpdateTask(task: CurrentTask)
                            }
                        }
                }
                
            }
            
        }
    }
}








struct TasksPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            TasksPageView()
        } .environmentObject(TasksViewModel())
    }
}
