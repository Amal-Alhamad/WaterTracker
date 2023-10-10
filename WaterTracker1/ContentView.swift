//
//  ContentView.swift
//  WaterTracker1
//
//  Created by Amal Saad on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var SharingAppleHealthDate : Bool = false
    // bcoz this var is includ struct
    @State var noOfCups: Int = 0
    @State var showWaterCupsView: Bool = false
    var body: some View {
       
 
        NavigationStack{
            VStack (spacing: 24){
                Text("Water Tracker 💧").bold().font(.title3)
                
                Toggle("Apple Health" , isOn:
                        $SharingAppleHealthDate)
                
                Stepper {
                    Text("Cups to drink per day \(noOfCups)")
                }
            onIncrement:{
                noOfCups += 1
            }
                
            onDecrement:{ 
                noOfCups -= 1
            }
                

                NavigationLink(destination: NoCupsScreen(getNumOfCups:.constant(0))){
                    Text("Continue")
                }
              
           
            }
        }
        .padding()
        .navigationTitle("Water Treacker")

    }
    }




#Preview {
    ContentView()
}  
