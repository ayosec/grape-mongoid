require 'mongoid'

Mongoid.load! "config/mongoid.config"

class Thing
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  validates :name, presence: true

end
