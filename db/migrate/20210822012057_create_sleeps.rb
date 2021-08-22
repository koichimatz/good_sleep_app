class CreateSleeps < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeps do |t|
      t.string :title
      t.text :opinion
      t.integer :user_id
      t.timestamps
    end
  end
end
