class Employee < ApplicationRecord
    belongs_to :user
    has_many :buildings

    def info
        "ID: #{id} #{first_name} #{last_name}"
    end
end
