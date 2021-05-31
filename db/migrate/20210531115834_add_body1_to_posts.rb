class AddBody1ToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :body1, :string
  end
end
