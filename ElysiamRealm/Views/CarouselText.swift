//
//  CarouselText.swift
//  ElysiamRealm
//
//  Created by Paul Frank Pacheco Carpio on 28/12/22.
//

import SwiftUI

struct CarouselText: View {
	
	@State private var currentOffset: CGFloat = 0
	@State private var currentOffsetLeading: CGFloat = 0
	
	var body: some View {
		GeometryReader {geo in
			VStack(alignment:.leading) {
				ZStack(alignment:.leading) {
					Text("Elysian Realm")
						.font(.system(size: 32))
						.textCase(.uppercase)
						.fontWeight(.bold)
						.foregroundColor(Color("Gold"))
						.offset(x: currentOffsetLeading, y: 0)
					Text("Elysian Realm")
						.font(.system(size: 32))
						.textCase(.uppercase)
						.fontWeight(.bold)
						.foregroundColor(Color("Gold"))
						.offset(x: currentOffset, y: 0)
				}.onAppear {
					let labelSize = geo.size.width
					currentOffsetLeading = -labelSize
					Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
						withAnimation(.linear(duration: 1)) {
							//if currentOffset <= geo.size.width {
								self.currentOffset += 20
							//}
							if currentOffset >= 10 {
								currentOffsetLeading += 20
							}
						}
						if currentOffset >= geo.size.width + 20 {
							self.currentOffset = currentOffsetLeading
							self.currentOffsetLeading = -labelSize
						}
					}
				}
				.onDisappear {
					self.currentOffset = 0
				}
				HStack {
					Text("\(currentOffsetLeading)").font(.title)
					Spacer()
					Text("\(currentOffset)").font(.title)
				}
				Text("\(geo.size.width)")
			}
			.frame(minWidth: 0, maxWidth: .infinity)
	}
	}
}

struct CarouselText_Previews: PreviewProvider {
    static var previews: some View {
        CarouselText()
    }
}
