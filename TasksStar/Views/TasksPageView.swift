import SwiftUI

struct TasksPageView: View {
    
    @AppStorage("Stars") var stars: Int = 10
    @EnvironmentObject var taskViewModel : TasksViewModel
  
    var body: some View {
        MainCardView()
     
        ScrollView(.vertical){
            ForEach(taskViewModel.TaskList.sorted{$1.CheckTask && !$0.CheckTask}) { CurrentTask in
                TasksView(task:CurrentTask)
                    .onTapGesture {
                        withAnimation(.linear){
                            taskViewModel.UpdateTask(task: CurrentTask)
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
