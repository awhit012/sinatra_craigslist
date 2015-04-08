class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   :title
      t.text     :description
      t.string   :email
      t.integer  :price
      t.string   :url
      t.integer  :category_id
    end
  end
end
