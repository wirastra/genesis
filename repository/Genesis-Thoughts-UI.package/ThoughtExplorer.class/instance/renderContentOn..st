as yet unclassified
renderContentOn: canvas
	self model
		do: [ :record | 
			canvas div
				class: 'thoughtRecord';
				with: [ 
							canvas anchor
								callback: [ 
											self
												call:
													(ThoughtComponent new
														thought: record;
														yourself) ];
								with: record trigger ] ].
	canvas form
		with: [ 
			canvas button
				callback: [ self model add: (self call: NewThoughtTask new) ];
				with: 'New Thought' ]