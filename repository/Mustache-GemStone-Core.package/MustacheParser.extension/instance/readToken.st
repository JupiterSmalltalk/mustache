*Mustache-GemStone-Core
readToken
  | token |
  token := (stream upToAll: self endDelimiter) trimBoth.
  stream skip: self endDelimiter size.
  ^ token