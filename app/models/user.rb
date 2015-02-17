class User
  include Mongoid::Document
  devise :database_authenticatable

  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

end
