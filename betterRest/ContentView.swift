//
//  ContentView.swift
//  betterRest
//
//  Created by Ahad Islam on 3/29/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
            Text("\(sleepAmount, specifier: "%g") hours")
        }
    }
}

struct ContentView: View {
    @State private var wakeUp = Date()
    
    var body: some View {
        
        DatePicker("Please enter a date", selection: $wakeUp, in: Date()...)
        .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
