class Message
  include MongoMapper::EmbeddedDocument

  key :emotion_type, String
  key :created_at, Time
  key :text, String

end
