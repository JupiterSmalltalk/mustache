tests
testObjectNoSectionBreakingDemeterLaw
  | template result |
  template := MustacheTemplate on: '{{stream.class.name.first.asLowercase}}'.
  result := template value: {('stream' -> 'Hello' readStream)} asDictionary.
  self assert: result = 'a'