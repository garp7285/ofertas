class AddLatitudAndLongitudToUser < ActiveRecord::Migration
  def change
    add_column :users, :latitud, :float
    add_column :users, :longitud, :float
  end
end
