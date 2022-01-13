class Customer < ApplicationRecord
  has_many :governings, dependent: :destroy
end
