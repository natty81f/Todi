class Message
  include MongoMapper::EmbeddedDocument

  key :emotion_type, String
  key :text, String
  timestamps!

end
