class MakeArtistUserIdOptional < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:artists, :user_id, true)
  end
end
