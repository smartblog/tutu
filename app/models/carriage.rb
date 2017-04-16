class Carriage < ActiveRecord::Base
  belongs_to :train

  validates :number, presence: true
  before_validation :set_number

  scope :sort_number, -> { order('carriages.number') }

  def set_number
    return unless train
    if train.carriages.size == 0
      self.number = 1
    else
      self.number = 1
      while train.carriages.find_by(number: self.number) != nil do
        self.number += 1
      end
    end
  end
end
