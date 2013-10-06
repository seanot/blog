class Post < ActiveRecord::Base
  belongs_to :user

  has_many :comments, dependant: :destroy

  validates :title, presence: true, length: { minimum: 5 }


end
