//
//  ProgressBarView.swift
//  TasksStar
//
//  Created by hoton on 19/06/1444 AH.
//

import SwiftUI

struct ProgressBar: View {
    
    let total: Int = 5
    let completed: Int
    @State var lineWidth: CGFloat = 16

    var body: some View {
        ZStack{
                Circle()
                    .stroke(Color(white: 230/255),
                            style: StrokeStyle(
                                lineWidth: lineWidth / 1.6
                            )  )
            Circle()
                .trim(from: 0, to: CGFloat(completed)/CGFloat(total))
                .stroke(Color.green,
                        style: StrokeStyle(
                            lineWidth: lineWidth,
                            lineCap: .round
                        ))
                .rotationEffect(.degrees(-90))
            
            Text("\(completed) / \(total)")
        }.frame(width: 300, height: 300)
            .font(.system(size: 50))
      
    }
}



    struct CircularProgressBarProgressView_Previews: PreviewProvider {
        static var previews: some View {
                    ProgressBar(completed: 3)

        }
    }
