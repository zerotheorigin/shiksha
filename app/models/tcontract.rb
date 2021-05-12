class Tcontract < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher

	has_many :infolets
end
