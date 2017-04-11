class AddTrainIdToCarriages < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :carriages, :current_train
  end
end
