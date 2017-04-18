class Carriage < ActiveRecord::Base
  belongs_to :train

  validates :number, presence: true
  validates :number, uniqueness: { scope: :train_id }
  before_validation :set_number

  scope :sort_number, -> { order(:number) }

  def set_number
    if train.carriages.maximum(:number).nil?
      self.number = 1
    else
      self.number = train.carriages.maximum(:number) + 1
    end
  end
end
