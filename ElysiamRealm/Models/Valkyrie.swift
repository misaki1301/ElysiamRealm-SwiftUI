//
//  Valkyrie.swift
//  ElysiamRealm
//
//  Created by Paul Frank Pacheco Carpio on 25/12/22.
//

import Foundation

struct Valkyrie {
	
	var id: Int
	var name: String
	var image: String
	var profile: String
	var skills: [Skill]?
	var coreStrengths: [CoreStrength]?
	var equipmentBuilds: [EquipmentBuild]?
}

struct CoreStrength {
	var id: Int
	var name: String
	var icon: String
}

struct EquipmentBuild {
	var preferredWeapon: Weapon
	var preferredStigmatas: [Stigma]
	var offensiveAbilityPercent: Double
	var functionalityPercent: Double
	var compatibilityPercent: Double
}

struct Skill {
	var id: Int
	var name: String
}

struct Weapon {
	
}

struct Stigma {
	
}
