class Favorite
  include Mongoid::Document
  belongs_to :user
  belongs_to :truck
end
