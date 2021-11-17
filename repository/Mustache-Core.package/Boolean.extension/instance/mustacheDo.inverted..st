*mustache-core
mustacheDo: aBlock inverted: aBoolean
  (self xor: aBoolean)
    ifTrue: [ aBlock value: nil ]