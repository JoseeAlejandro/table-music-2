class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.references :user, foreign_key: true
      t.string :playlist_name
      t.string :playlist_song
      t.string :playlist_singer
      t.string :playlist_album

      t.timestamps
    end
  end
end
