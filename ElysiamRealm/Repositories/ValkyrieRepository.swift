//
//  ValkyrieRepository.swift
//  ElysiamRealm
//
//  Created by Paul Frank Pacheco Carpio on 25/12/22.
//

import Foundation

protocol Repository {
	associatedtype T
	func getAll() -> [T]
	func get(id: Int) -> T?
	func add(item: T)
	func update(item: T)
	func delete(item: T)
}

class ValkyrieRepository: Repository {
	
	static let shared = ValkyrieRepository()
	
	var valkyries: [Valkyrie] = []
	
	private init() {
		let data: [Valkyrie] = [
			Valkyrie(id: 1, name: "Herrscher of Flamescion", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/d/d8/Herrscher_of_Flamescion.png/revision/latest?cb=20220220052925", profile: ""),
			Valkyrie(id: 2, name: "Herrscher of Thunder", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/3/3c/Herrscher_of_Thunder.png/revision/latest?cb=20220201112916", profile: ""),
			Valkyrie(id: 3, name: "Herrscher of Reason", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/0/0a/Herrscher_of_Reason.png/revision/latest?cb=20220109064349", profile: ""),
			Valkyrie(id: 4, name: "Stygian Nymph", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/1/13/Stygian_Nymph.png/revision/latest?cb=20220203143551", profile: ""),
			Valkyrie(id: 5, name: "Miss Pink Elf", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/3/33/Miss_Pink_Elf%E2%99%AA.png/revision/latest?cb=20220210142352", profile: ""),
			Valkyrie(id: 6, name: "Midnight Absinthe", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/3/36/Midnight_Absinthe.png/revision/latest?cb=20220210140423", profile: ""),
			Valkyrie(id: 7, name: "Violet Executer", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/a/a4/Twilight_Paladin.png/revision/latest?cb=20220713005436", profile: ""),
			Valkyrie(id: 8, name: "SILVERWING: N-EX", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/3/33/Silverwing_-_N-EX.png/revision/latest?cb=20220114093906", profile: ""),
			Valkyrie(id: 9, name: "Spina Astera", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/b/ba/Spina_Astera.png/revision/latest?cb=20220224104915", profile: ""),
			Valkyrie(id: 10, name: "Fallen Rosemary", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/b/b0/Fallen_Rosemary.png/revision/latest?cb=20220202104302", profile: ""),
			Valkyrie(id: 11, name: "Reverist Calico", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/2/27/Reverist_Calico.png/revision/latest?cb=20220407134759", profile: ""),
			Valkyrie(id: 12, name: "Golden Diva", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/c/c5/Golden_Diva.png/revision/latest?cb=20220519103025", profile: ""),
			Valkyrie(id: 13, name: "Starry Impression", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/0/06/Starry_Impression.png/revision/latest?cb=20220630161355", profile: ""),
			Valkyrie(id: 14, name: "Herrscher of the Void", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/2/29/Herrscher_of_the_Void.png/revision/latest?cb=20220713005042", profile: ""),
			Valkyrie(id: 15, name: "Jade Knight", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/f/fc/Jade_Knight.png/revision/latest?cb=20221015102424", profile: ""),
			Valkyrie(id: 16, name: "Argent Knight: Artemis", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/1/1e/Argent_Knight_-_Artemis.png/revision/latest?cb=20220202103503", profile: ""),
			Valkyrie(id: 17, name: "Valkyrie Gloria", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/3/37/Valkyrie_Gloria.png/revision/latest?cb=20220203115613", profile: ""),
			Valkyrie(id: 18, name: "Ritual Imayoh", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/a/a2/Ritual_Imayoh.png/revision/latest?cb=20220713005604", profile: ""),
			Valkyrie(id: 19, name: "Luna Kindred", image: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/b/b4/Luna_Kindred.png/revision/latest/scale-to-width-down/1000?cb=20210819212138", profile: "")
		]
		self.valkyries = data
	}
	
	func get(id: Int) -> Valkyrie? {
		return valkyries.first(where: {$0.id == id})
	}
	
	func getAll() -> [Valkyrie] {
		return valkyries
	}
	
	func add(item: Valkyrie) {
		valkyries.append(item)
	}
	
	func update(item: Valkyrie) {
		if let index = valkyries.firstIndex(where: {$0.id == item.id}) {
			valkyries[index] = item
		}
	}
	
	func delete(item: Valkyrie) {
		if let index = valkyries.firstIndex(where: {$0.id == item.id}) {
			valkyries.remove(at: index)
		}
	}
	
}
