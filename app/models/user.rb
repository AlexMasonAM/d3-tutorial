class User
  include Mongoid::Document
  field :user_name, type: String
  has_many :favorites
  has_and_belongs_to_many :trucks

  validates_presence_of :user_name
end
