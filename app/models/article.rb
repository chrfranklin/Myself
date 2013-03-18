class Article < ActiveRecord::Base
  attr_accessible :content, :heading
  belongs_to :user
  validates :content, presence: true
  validates :heading, presence: true
  
  default_scope order: 'articles.created_at DESC'
end
