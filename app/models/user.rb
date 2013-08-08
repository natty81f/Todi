class User
  include MongoMapper::Document

  key :username, String
  key :name, String
  key :email, String
  key :fish, String
  key :salt, String
  key :expires_at, Time
  key :website, String
  timestamps!
  many :messages

end
