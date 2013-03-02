class Blog < ActiveRecord::Base
  attr_accessible :title, :content, :published, :title, :category_ids
  has_and_belongs_to_many :categories
  acts_as_commentable

  validates :title, :content, :published, :title, :category_ids, :presence => true
end
