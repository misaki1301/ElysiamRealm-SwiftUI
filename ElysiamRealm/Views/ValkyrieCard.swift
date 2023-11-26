//
//  ValkyrieCard.swift
//  ElysiamRealm
//
//  Created by Paul Frank Pacheco Carpio on 25/12/22.
//

import SwiftUI
import Kingfisher

struct ValkyrieCard: View {
    
	var image: URL = URL(string: "https://static.wikia.nocookie.net/honkaiimpact3_gamepedia_en/images/d/de/Herrscher_of_Human_-_Ego.png/revision/latest?cb=20220910103158")!
	
	var name: String = "Herrscher of Human Ego"
	
	var body: some View {
		ZStack {
			KFImage(image)
				.cacheMemoryOnly(true)
				//.indicatorType(.fade(.medium))
				.resizable()
				.scaledToFill()
				.frame(width: 188, alignment: .center)
				.clipped()
			RoundedRectangle(cornerRadius: 4)
				.stroke(Color("lowGold"), lineWidth: 4)
				.frame(width: 178, height: 458)
			GeometryReader { geo in
				VStack(spacing: 0) {
					Rectangle()
						.fill(Color("Gold"))
						.cornerRadius(8)
						.frame(height: 4)
						.padding(.horizontal, 16)
					Text(name)
						.font(.system(size: 18))
						.fontWeight(.semibold)
						.multilineTextAlignment(.center)
						.lineLimit(2)
						.shadow(radius: 4)
						.foregroundColor(Color("Gold"))
						.padding(.bottom, 8.0)
						.frame(width: 160, height: 70)
						//.frame(maxWidth: .infinity)
				}
				.frame(width: geo.size.width, height: geo.size.height, alignment: .bottom)
			}
			
		}
		.frame(width: 188, height: 468)
		.background(Color.black.opacity(0.5))
		.cornerRadius(8)
		
    }
}

struct ValkyrieCard_Previews: PreviewProvider {
    static var previews: some View {
        ValkyrieCard()
    }
}
