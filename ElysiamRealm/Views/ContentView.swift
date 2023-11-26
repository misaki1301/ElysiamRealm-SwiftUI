//
//  ContentView.swift
//  ElysiamRealm
//
//  Created by Paul Frank Pacheco Carpio on 25/12/22.
//

import SwiftUI
import Kingfisher
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
	
	var repo = ValkyrieRepository.shared
	
	var columns = [
		GridItem(.fixed(188))
	]

    var body: some View {
		NavigationView {
			VStack {
				Text("Elysian Realm")
					.font(.system(size: 32))
					.textCase(.uppercase)
					.fontWeight(.bold)
					.foregroundColor(Color("Gold"))
					.padding(.top, 16)
				ScrollView(.horizontal) {
					LazyHGrid(rows: columns, spacing: 16) {
						ForEach(repo.valkyries, id: \.id) {
							valkyrie in
							ValkyrieCard(image: URL(string: valkyrie.image)!, name: valkyrie.name)
						}
					}.padding(.leading, 16)
				}.frame(height: 468)
				HStack {
					ZStack {
						RoundedRectangle(cornerRadius: 4)
							.stroke(Color("Gold"), lineWidth: 0.5)
							.frame(width: 32, height: 32)
						Rectangle()
							.foregroundColor(.black.opacity(0.5))
							.frame(width: 32, height: 32)
							.cornerRadius(4)
						Circle()
							.foregroundColor(Color("Gold"))
							.frame(width: 24)
						Text("!")
							.fontWeight(.heavy)
							.foregroundColor(.black)
					}
					Text("Featured\nValkyries")
						.fontWeight(.bold)
						.foregroundColor(.white)
					HStack {
						ZStack {
							Circle()
								.foregroundColor(.black.opacity(0.4))
								.frame(width: 36)
							Circle()
								.stroke(Color("Gold"), lineWidth: 2)
								.frame(width: 36)
							KFImage(URL(string: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/9/97/Herrscher_of_Human_-_Ego_Chibi_%28Icon%29.png/revision/latest/"))
								.resizable()
								.scaledToFill()
								.frame(width: 40, height: 40)
								.padding(.bottom, 8)
						}
					}
					NavigationLink(destination: CarouselText()) {
						Text("TEST")
					}
				}
				.padding(.leading, 16)
				.frame(maxWidth:.infinity, alignment: .leading)
			}
			.frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
			.background(Color.black.opacity(0.8))
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
