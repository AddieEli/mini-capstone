class Order < ApplicationRecord
  belongs_to :bee, optional: true
  belongs_to :user
end
