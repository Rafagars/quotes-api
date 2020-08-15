class Quote < ApplicationRecord
  validates :quote, presence: true, uniqueness: true
  validates :person, presence: true
end
