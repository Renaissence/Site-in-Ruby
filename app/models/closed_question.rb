class ClosedQuestion < ApplicationRecord::Base
    validates :option, :presence => { :if => 'option.nil?' }  
end
