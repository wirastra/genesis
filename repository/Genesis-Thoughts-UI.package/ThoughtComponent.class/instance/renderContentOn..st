as yet unclassified
renderContentOn: canvas
	canvas heading
		level2;
		with: [ canvas text: 'though editor' ].
	canvas form
		with: [ 
			canvas paragraph
				with: [ 
					canvas label: 'Trigger'.
					canvas textInput
						value: thought trigger;
						callback: [ :value | thought trigger: value ] ].
			canvas paragraph
				with: [ 
					canvas label: 'Feelings'.
					canvas textInput
						value: thought feelings;
						callback: [ :value | thought feelings: value ] ].
			canvas paragraph
				with: [ 
					canvas label: 'Unhelpful Thoughts'.
					canvas textInput on: #unhelpfulThoughts of: thought ].
			canvas paragraph
				with: [ 
					canvas label: 'Positive Facts'.
					canvas textInput on: #positiveFacts of: thought ].
			canvas paragraph
				with: [ 
					canvas label: 'Negative Facts'.
					canvas textInput on: #negativeFacts of: thought ].
			self textFieldWithLabel: 'Balanced Perspective' selector: #balancedPerspective on: canvas.
			self textFieldWithLabel: 'Outcome' selector: #outcome on: canvas.
			canvas submitButton callback: [ self answer ] ]