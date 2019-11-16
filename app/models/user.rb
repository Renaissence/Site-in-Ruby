class User < ApplicationRecord::Base
    validates :name,:email_address, :presence=> true;
    validates :name, :email_address :uniqueness => true;
end
