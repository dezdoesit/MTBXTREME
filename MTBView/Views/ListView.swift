import SwiftUI

struct ListView: View {

   @StateObject var listStore = listItemStore()

    var body: some View {
        VStack(spacing: 28) {
            ForEach(listStore.listItems.indices, id: \.self) { index in
                HStack {
                    Image(systemName: listStore.listItems[index].symbol)
                        .foregroundColor(.green)
                        .font(.system(.title, weight: .regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        Text(listStore.listItems[index].title)
                            .font(.system(.footnote, weight: .semibold))
                        Text(listStore.listItems[index].subtitle)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
        }
    }
}


