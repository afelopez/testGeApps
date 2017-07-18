class Vehicle < ApplicationRecord
  validates :plate, uniqueness: true, presence: true, format: {with: /^(ABC|DFG)/, multiline: true}
  after_create :set_categorie
  has_many :paths

  enum categorie: [:categoria1, :categoria2]

  def set_categorie
    self.plate.start_with?('ABC') ? self.categoria1! : self.categoria2!
  end
end
