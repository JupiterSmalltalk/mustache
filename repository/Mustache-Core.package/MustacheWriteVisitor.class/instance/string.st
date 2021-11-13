accessing
string
  ^ strings
    ifNotEmpty: [ 
      String
        streamContents: [ :stream | strings do: [ :string | stream nextPutAll: string ] ] ]
    ifEmpty: [ '' ]