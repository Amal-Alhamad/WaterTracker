//
//  NoCupsScreen.swift
//  WaterTracker1
//
//  Created by Amal Saad on 25/03/1445 AH.
//

import SwiftUI

struct NoCupsScreen: View {
    @Binding var getNumOfCups: Int
    var body: some View {
  //  Text("Number of Cups \(getNumOfCups)")
        Text("Number of Cups ")

    .navigationTitle("NoCupsScreen")
    }
}

#Preview {
    NoCupsScreen(getNumOfCups:.constant(0))
   // NoCupsScreen()
}
