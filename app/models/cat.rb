class Cat < ActiveRecord::Base
  validates :name, presence: true, length: { in: 1..25 }
  validates :trait, presence: true
  # validates :gender, acceptance: { accept: 'M' || 'F' }
end
