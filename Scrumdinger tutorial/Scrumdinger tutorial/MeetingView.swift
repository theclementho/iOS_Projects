//
//  ContentView.swift
//  Scrumdinger tutorial
//
//  Created by Sylvia Nguyen on 2023-11-13.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        // use ProgressView to show the time progression of the meeting - changing the value of 'value' will increase or decrease the blue part
        VStack {
            ProgressView(value: 5, total: 45)
            HStack {
                //leading and trailing alignments override the default behaviour of center alignment
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)//to customize SwiftUI views, use modifiers and to chain them, stack them vertically
                    
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()//to use available space from parent container
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
