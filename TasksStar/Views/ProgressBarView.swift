//
//  ProgressBarView.swift
//  TasksStar
//
//  Created by hoton on 19/06/1444 AH.
//

import SwiftUI

struct ProgressBarBackground: View {

    let total: Int = 5 
    @State var lineWidth: CGFloat = 16
            var body: some View {
                GeometryReader { geometry in
                    Circle()
                        .stroke(Color(white: 230/255),
                                style: StrokeStyle(
                                    lineWidth: lineWidth / 1.6
                  )  )
                }
            }
        }



        struct ProgressBarView: View {
            let total: Int = 5
            let completed: Int
            @State var lineWidth: CGFloat = 16
            @State var color: Color = .green
            var body: some View {
                Circle()
                    .trim(from: 0, to: CGFloat(completed)/CGFloat(total))
                    .stroke(color,
                            style: StrokeStyle(
                                lineWidth: lineWidth,
                                lineCap: .round
                            ))
                    .rotationEffect(.degrees(-90))
            }
        }


        struct CircularProgressBarProgressView_Previews: PreviewProvider {
            static var previews: some View {
                Group {
                    ZStack{
                        ProgressBarBackground()
                        ProgressBarView(completed: 3)
                    }
                    ProgressBarView(completed: 4)
                    ProgressBarView(completed: 6)
                }
            }
        }
