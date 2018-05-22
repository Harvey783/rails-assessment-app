class Project < ApplicationRecord
  has_many :activities, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, length: { minimum: 4, maximum: 500 }
  validates :due_date, presence: true

  scope :over_due, -> { where('due_date <= ?', Date.today)}

  def activity_attributes=(activity_attributes)
    if activity_attributes[:name].present?
      self.activities.build(activity_attributes)
    end
  end
end
