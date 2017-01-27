class Event < ActiveRecord::Base
  belongs_to :creator, class_name: 'User'

  validates :name, presence: { message: "Name must be entered"}
  validates :date, presence: { message: "Date must be entered"}
  validates :city, presence: { message: "City must be entered"}
  validates :state, presence: { message: "State must be entered"}
end
