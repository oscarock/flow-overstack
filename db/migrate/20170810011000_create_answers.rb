class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :content
      t.belongs_to :question, index: true
      t.timestamps
    end
  end
end
