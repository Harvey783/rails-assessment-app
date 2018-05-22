class Activity < ApplicationRecord
  belongs_to :project
    validates :name, presence: true, length: { minimum: 5, maximum: 500 }
end
