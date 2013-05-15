class User < ActiveRecord::Base
  attr_accessible :name, :book_ids
  has_many :user_books
  has_many :books, :through => :user_books
end
