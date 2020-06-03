class Task < ApplicationRecord
  has_many :notes
  belongs_to :user

  validates :name, presence: true


  validates :title, presence: true
end
