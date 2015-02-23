class User
  include Mongoid::Document
  devise :database_authenticatable

  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  def self.serialize_from_session(key, salt)
    record = to_adapter.get(key[0].as_json["$oid"])
    record if record && record.authenticatable_salt == salt
  end

end
