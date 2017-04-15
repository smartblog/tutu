class Carriage < ActiveRecord::Base
  belongs_to :train, optional: true

  validates :number, presence: true
  before_validation :set_number

  def set_number
    return unless train
    self.number = train.carriages.size + 1
  end
end
