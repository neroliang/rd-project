class Job < ApplicationRecord
  enum status: {open: 0, closed: 1, cancelled: 2}

  validates :title, presence: true
  validates :description, presence: true
end
