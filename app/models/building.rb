class Building < ApplicationRecord
    belongs_to :customer
    has_many :batteries
    has_one :building_detail
    has_one :address
    has_one :employee


    def info
        "ID:#{id} #{adm_contact_full_name}"
    end
end
