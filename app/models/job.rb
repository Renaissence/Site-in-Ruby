class Job < ApplicationRecord::Base
    validates :job_title,:company_name, :location, :job_description, :contract_type, :presence => true
    validates :company_name, :uniqueness => true
end
