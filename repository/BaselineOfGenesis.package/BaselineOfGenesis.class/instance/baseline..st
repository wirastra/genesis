as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'Genesis-Core-Model';
				package: 'Genesis-Core-UI' with: [ spec requires: #('Genesis-Core-Model') ] ]