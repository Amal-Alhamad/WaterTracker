//
//  ContentView.swift
//  WaterTracker1
//
//  Created by Amal Saad on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var aSAHD : Bool = false
    // bcoz this var is includ struct
    @State var noOfCups: Int = 0
    @State var showWaterCupsView: Bool = false
    var body: some View {
       
 
        NavigationStack{
            VStack (spacing: 24){
                Text("Water Tracker 💧").bold().font(.title3)
                
                Toggle("Apple Health" , isOn:
                        $aSAHD)
                
                Stepper {
                    Text("Cups to drink per day \(noOfCups)")
                }
            onIncrement:{noOfCups = noOfCups + 1
            }
                
            onDecrement:{ noOfCups = noOfCups - 1
            }
                
                
                Button{
                    showWaterCupsView.toggle()
                }label: {
                    Text("Continue")
                }


               /* NavigationLink(destination: NoCupsScreen()){
                    Text("Continue")
                }
              */
           
            }
        }
        .padding()
       // .navigationTitle("Water Treacker")
        .sheet(isPresented: $showWaterCupsView, 
               content: {
            NoCupsScreen()
        })
    }
    }




#Preview {
    ContentView()
}  
