class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :links, dependent: :destroy
  belongs_to :category
  validates :title, presence: true,
                    length: { minimum: 5 }
end
