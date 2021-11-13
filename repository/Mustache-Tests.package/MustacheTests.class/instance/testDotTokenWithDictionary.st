tests
testDotTokenWithDictionary
  | template result |
  template := MustacheTemplate on: '{{ . }}'.
  result := template value: {('foo' -> 'bar')} asDictionary.
  self assert: result = 'aDictionary'