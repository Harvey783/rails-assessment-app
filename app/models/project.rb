class Project < ApplicationRecord
  has_many :activities, dependent: :destroy
  belongs_to :user

  validates :name, presence: true

  def activity_attributes=(activity_attributes)
    if activity_attributes[:name].present?
      self.activities.build(activity_attributes)
    end
  end
end
