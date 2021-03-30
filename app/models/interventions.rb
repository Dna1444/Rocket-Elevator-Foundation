class Interventions < ApplicationRecord
    # belongs_to :employees, foreign_key: 'author'
    # belongs_to :customers
    # belongs_to :building
    # belongs_to :batteries
    # belongs_to :columns
    # belongs_to :elevators
    # belongs_to :employees
    validates :author, presence: true
    validates :customers_id, presence: true
    validates :building_id, presence: true
    validates :Status, presence: "Pending"
    validates :Result, presence: 'Incomplete'
end
