class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :content
      t.references :id_users, foreign_key: true

      t.timestamps
    end
  end
end
