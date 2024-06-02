class Country < ApplicationRecord
  # install imagemagick
  # sudo apt-get install imagemagick on linux or brew on Mac
  # convert xx.png -colorspace gray xx.png
  # convert ireland.png -resize 16x16 ./../16/ireland.png

  validates :name, presence: true, uniqueness: true
  validates :flag_name, presence: true

  default_scope { order(:name) }
end
