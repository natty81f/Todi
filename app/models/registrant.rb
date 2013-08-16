class Registrant
  include MongoMapper::Document

  attr_accessor :email

  key :email, String
  key :code, String
  key :expires_at, Time
  
  timestamps!

  validates :email, presence: true, uniqueness: true

end
