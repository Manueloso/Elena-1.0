//
//  ListView2.swift
//  Elena
//
//  Created by Daniele Perrupane on 21/02/24.
//

import SwiftUI

struct ListView2: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    //    @State var items: [ItemModel] = [
    //
    //        ItemModel(title: "First Title!", isCompleted: false),
    //        ItemModel(title: "Second Title!", isCompleted: true),
    //        ItemModel(title: "Third Title!", isCompleted: false)
    //
    //    ]
    
    var body: some View {
        List{
            ForEach(listViewModel.items){ item in
                ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Daily Tasks 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
    
    //    func deleteItem(indexSet: IndexSet) {
    //        items.remove(atOffsets: indexSet)
    //    }
    //
    //    func moveItem(from: IndexSet, to: Int) {
    //        items.move(fromOffsets: from, toOffset: to)
    //    }
    
}

struct ListView2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView2()
        }.environmentObject(ListViewModel())
    }
}
