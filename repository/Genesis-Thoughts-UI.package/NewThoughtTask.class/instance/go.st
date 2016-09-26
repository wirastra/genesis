as yet unclassified
go
	self
		answer:
			(ThoughtRecord new
				trigger: (self request: 'Trigger');
				feelings: (self request: 'Feelings');
				unhelpfulThoughts: (self request: 'Unhelpful Thoughts');
				positiveFacts: (self request: 'Positive Facts');
				negativeFacts: (self request: 'Negative Facts');
				balancedPerspective: (self request: 'Balanced Perspective');
				outcome: (self request: 'Outcome');
				yourself)