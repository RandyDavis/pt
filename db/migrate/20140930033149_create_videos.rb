class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :youtube_id

      t.timestamps null: false
    end
  end
end
