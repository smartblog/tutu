class AddSortKeyCarriagesToTrain < ActiveRecord::Migration[5.0]
  def change
    add_column :trains, :rev_carriages_sort, :boolean, default: false
  end
end
