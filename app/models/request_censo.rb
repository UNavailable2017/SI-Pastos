class RequestCenso < ApplicationRecord    
    validates :name, :lastname, :num_document, :phone, :address, presence: true
end
