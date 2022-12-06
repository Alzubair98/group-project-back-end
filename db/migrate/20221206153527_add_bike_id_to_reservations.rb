class AddBikeIdToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :bike_id, :integer
  end
end
