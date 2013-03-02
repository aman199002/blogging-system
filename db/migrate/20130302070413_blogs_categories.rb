class BlogsCategories < ActiveRecord::Migration
  def up
  	create_table 'blogs_categories', :id => false do |t|
      t.column :blog_id, :integer
      t.column :category_id, :integer
    end
  end

  def down
  	drop_table :blogs_categories
  end
end
