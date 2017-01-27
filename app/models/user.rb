class User < ActiveRecord::Base
  has_secure_password
  validates :f_name, presence: { message: "First name must be entered"}
  validates :l_name, presence: { message: "Lirst name must be entered"}
  validates :city, presence: { message: "City must be entered"}
  validates :state, presence: { message: "State must be entered"}
  validates :email, presence: { message: "Email must be entered"}
  validates :password, presence: { message: "Password must be entered and must be at least 6 characters"}, length: {minimum: 6}, :on => :create
  validates :password_confirmation, presence: { message: "Passwords must match"}, :on => :create
end
