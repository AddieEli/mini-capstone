class Image < ApplicationRecord
  belongs_to :bee

  validates :url, presence: true


end
