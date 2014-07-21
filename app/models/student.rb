class Student < ActiveRecord::Base
  has_many :enrollment
  has_many :courses, through: :enrollment
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validate :date_validator
  
  default_scope {order('last_name, first_name')}
  
  def full_name
    "#{last_name} #{first_name}"
  end
  
  private
    
    def date_validator
      if self.birth_date.nil? or self.birth_date > Date.today
        errors.add(:Date, 'is blank or invalid')
      end
    end
  
end
