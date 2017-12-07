class Link < ApplicationRecord
  validates :shortURL, uniqueness: true
end
