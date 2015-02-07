class Truck
  include Mongoid::Document
  field :truck_name, type: String
  has_many :favorites
  has_and_belongs_to_many :users

  validates_presence_of :truck_name
end
