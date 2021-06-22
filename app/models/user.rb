class User < ApplicationRecord
  belongs_to :home, optional: true
end
