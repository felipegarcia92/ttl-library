class RemoveRatingFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :rating, :integer
  end
end
