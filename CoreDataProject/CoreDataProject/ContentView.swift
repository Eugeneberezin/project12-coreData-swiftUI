//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Eugene Berezin on 5/19/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import SwiftUI

struct Student: Hashable {
    let name: String
}

struct ContentView: View {
    let students = [Student(name: "Eugene"), Student(name: "Eugene")]
    var body: some View {
        List(students, id: \.self) { student in
            Text(student.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
