class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.integer :story_id
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
