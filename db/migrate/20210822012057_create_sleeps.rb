class CreateSleeps < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeps do |t|
      t.string :title
      t.text :opinion
      t.integer :user_id
      t.integer :tag_id
      t.datetime :bedtime
      t.datetime :waketime
      t.string :image_id
      t.timestamps
    end
  end
end