//
//  AppStorageBootcamp.swift
//  AppStorage
//
//  Created by Lucas Neves dos santos pompeu on 21/11/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
