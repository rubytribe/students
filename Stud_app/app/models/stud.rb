class Stud < ActiveRecord::Base
	validates :first_name, presence: true, length:{minimum: 3}
	validates :last_name, presence: true, length:{minimum: 3}
	validates :birth_date, presence:true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	attr_accessible :first_name, :last_name, :birth_date, :email
	has_many :enrollements
	has_many :courses, through: :enrollements
end
