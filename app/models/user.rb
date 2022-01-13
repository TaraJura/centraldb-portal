class User < ApplicationRecord
  has_many :governings, dependent: :destroy
end
