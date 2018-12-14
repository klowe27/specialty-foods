class UpdateReviewsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :content_body
    add_column :reviews, :content_body, :text
  end
end
