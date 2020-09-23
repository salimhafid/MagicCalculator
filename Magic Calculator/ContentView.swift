//
//  ContentView.swift
//  Magic Calculator
//
//  Created by Salim Hafid on 9/18/20.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("answer") var answer = 0.0
    @State private var inputs = [String]()
    @State private var calcArray = [Double]()
    @State private var interimValue = 0.0
    
    func calculate(_ operation: String) {
            switch operation {
            case "+":
                join()
                print("added")
            case "-":
                join()
                print("subtracted")
            case "%":
                join()
                print("percentage")
            case "÷":
                join()
                print("divided")
            case "x":
                join()
                print("multiplied")
            default:
                print("")
            }
        }
    
    func displayJoin() -> Double {
        let displayJoined = inputs.joined(separator: "")
        return Double(displayJoined) ?? 0.0
    }
    
    func join() {
        let joined = Double(inputs.joined(separator: "")) ?? 0.0
        calcArray.append(joined)
        interimValue = joined
        inputs = [String]()
    }
    
    func reset() {
        inputs = [String]()
        calcArray = [Double]()
        answer = 0.0
        interimValue = 0.0
    }
    
    var body: some View {
        GeometryReader { geometry in
            let box = geometry.size.width/4
        
        VStack {
                HStack {
                    Text("\(answer)")
                    }
                    .padding()
                    .frame(width: box*4, height: geometry.size.height/3)
            
        
            HStack(spacing: 0.0) {
                
                Button(action: {
                    reset()
                }) {
                Text("C")
                .frame(width: box, height: box)
                .font(.title)
                .background(Color.red)
                .foregroundColor(Color.white)
                }
                
                Button(action: {
                    calculate("-")
                }) {
                Text("+/-")
                .frame(width: box, height: box)
                .modifier(OperatorButton())
                }
                    
                Button(action: {
                    calculate("%")
                }) {
                Text("%")
                .frame(width: box, height: box)
                .modifier(OperatorButton())
                }
                
                Button(action: {
                    calculate("÷")
                }) {
                    Text("÷")
                .frame(width: box, height: box)
                .modifier(OperatorButton())
                }
            }
        
        
       
            HStack(spacing: 0.0) {
                
                Button(action: {
                    inputs.append("7")
                    answer = displayJoin()
                }) {
                Text("7")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                    
                Button(action: {
                    inputs.append("8")
                    answer = displayJoin()
                }) {
                Text("8")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    inputs.append("9")
                    answer = displayJoin()
                }) {
                Text("9")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                    
                Button(action: {
                    calculate("x")
                    displayJoin()
                }) {
                Text("x")
                .frame(width: box, height: box)
                .modifier(OperatorButton())
                }
            }
        
        
       
            HStack(spacing: 0.0) {
                
                Button(action: {
                    inputs.append("4")
                    answer = displayJoin()
                }) {
                Text("4")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    inputs.append("5")
                    answer = displayJoin()
                }) {
                Text("5")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    inputs.append("6")
                    answer = displayJoin()
                }) {
                Text("6")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    calculate("-")
                }) {
                Text("-")
                .frame(width: box, height: box)
                .modifier(OperatorButton())
                }
            }
        
        
        
            HStack(spacing: 0.0) {
                
                Button(action: {
                    inputs.append("1")
                    answer = displayJoin()
                }) {
                Text("1")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    inputs.append("2")
                    answer = displayJoin()
                }) {
                Text("2")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    inputs.append("3")
                    answer = displayJoin()
                }) {
                Text("3")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    calculate("+")
                }) {
                Text("+")
                .frame(width: box, height: box)
                .modifier(OperatorButton())
                }
            }
        
        
        
            HStack(spacing: 0.0) {
                
                Button(action: {
                    inputs.append("0")
                    answer = displayJoin()
                }) {
                Text("0")
                .frame(width: box*2, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    inputs.append(".")
                    answer = displayJoin()
                }) {
                Text(".")
                .frame(width: box, height: box)
                .modifier(NumberButton())
                }
                
                Button(action: {
                    calculate("=")
                }) {
                Text("=")
                .frame(width: box, height: box)
                .modifier(OperatorButton())
                }
            }
        
    
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
