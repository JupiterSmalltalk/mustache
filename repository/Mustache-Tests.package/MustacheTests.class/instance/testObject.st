tests
testObject
  | template result |
  template := MustacheTemplate
    on:
      '{{#stream}}Class: {{class}}, Position: {{position}}, Next: {{next}}, Position: {{position}}{{/stream}}'.
  result := template value: {('stream' -> 'Hello' readStream)} asDictionary.
  self
    assert: result = 'Class: AnsiReadStream, Position: 0, Next: H, Position: 1'