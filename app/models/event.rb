class Event < ApplicationRecord
  belongs_to :country

  enum status: {
    setup: 0,
    active: 1,
    archived: 2
  }
end
