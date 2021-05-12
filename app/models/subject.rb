class Subject < ApplicationRecord
  belongs_to :section
  #has_one :teacher

  has_many :tcontracts
  has_many :teachers,through: :tcontracts
  has_many :infolets

end
