reading
readStringChunk
  (stream upToAll: self startDelimiter)
    ifNotNil: [ :chunk | self addPart: (MustacheStringChunk string: chunk) ].
  stream atEnd
    ifFalse: [ stream skip: startDelimiter size ]