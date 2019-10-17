class Country < ApplicationRecord
    validates :continent, :country, presence: true
end
