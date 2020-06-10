class Employee < ApplicationRecord
    belongs_to :dog

    validates :first_name, presence: true 
    validates :last_name, presence: true 
    validates :alias, uniqueness: {case_sensitive: false}
    validates :title, uniqueness: {case_sensitive: false}

    def full_name 
        "#{self.first_name} #{self.last_name}"
    end 
end
