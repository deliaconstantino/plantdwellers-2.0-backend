class Home < ApplicationRecord
  has_many :users, dependent: :destroy
end
