class Task < ApplicationRecord
<<<<<<< HEAD
  has_many :notes
  belongs_to :user

  validates :name, presence: true

=======
  validates :title, presence: true
>>>>>>> c2670d2b8950f5d246f872278be627777ba05d49
end
