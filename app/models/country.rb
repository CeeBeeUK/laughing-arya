class Country < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :flag_name, presence: true

  default_scope { order(:name) }
end
