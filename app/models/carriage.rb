class Carriage < ActiveRecord::Base
  belongs_to :train

  validates :number, presence: true
  validates :number, uniqueness: { scope: :train_id }
  before_validation :set_number, unless: :train?

  scope :sort_number, -> { order(:number) }

  def train?
    !!train
  end

  def set_number
    if train.carriages.size.zero?
      self.number = 1
    else
      self.number = 2
      self.number += 1 while train.carriages.find_by(number: number).nil?
    end
  end
end
