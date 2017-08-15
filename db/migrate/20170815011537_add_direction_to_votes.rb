class AddDirectionToVotes < ActiveRecord::Migration[5.1]
  def change
    add_column :votes, :direction, :string
  end
end
