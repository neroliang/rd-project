class Project < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  has_many :jobs
  belongs_to :user
end
