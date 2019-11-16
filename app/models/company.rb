class Company < ApplicationRecord::Base
    validates :name, :presence=> true;
    validates :name, :uniqueness => true;
end
