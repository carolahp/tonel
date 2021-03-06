private factory
newStatelessTraitDefinitionFrom: anArray
	| metadata |
	
	metadata := anArray sixth.
	
	self validateStatelessTraitIsBeingRead: metadata.
	
	^ MCTraitDefinition
			name: (metadata at: #name)
			traitComposition: (metadata at: #traits ifAbsent: [ '{}' ])
			classTraitComposition: (metadata at: #classTraits ifAbsent: [ '{}' ])
			category: (metadata at: #category)
			comment: (anArray second ifNil: [ '' ])
			commentStamp: nil