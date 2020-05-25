//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Eugene Berezin on 5/19/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//

import CoreData
import SwiftUI

struct FilteredList: View {
    var fetchRequest: FetchRequest<Singer>
    var singers: FetchedResults<Singer> { fetchRequest.wrappedValue }
    
    var body: some View {
        List(fetchRequest.wrappedValue, id: \.self) { singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
        }
    }
    
    init(filter: String) {
        fetchRequest = FetchRequest<Singer>(entity: Singer.entity(), sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH %@", filter))
    }
}

struct FilteredList_Previews: PreviewProvider {
    
    static var previews: some View {
        FilteredList(filter: "a")
    }
}
