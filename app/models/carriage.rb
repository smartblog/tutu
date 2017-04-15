class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true

  validates :number, presence: true
end
