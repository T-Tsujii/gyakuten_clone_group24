class CreateViews < ActiveRecord::Migration[6.0]
  def change
    create_table :views do |t|
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
    add_index :views, [:user_id, :question_id], unique: true
  end
end
