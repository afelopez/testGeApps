class Vehicle < ApplicationRecord
  validates :plate, uniqueness: true, presence: true, format: {with: /^(ABC|DFG)/, multiline: true}
  after_initialize :set_categorie

  enum categorie: [:categoria1, :categoria2]

  def set_categorie
    self.plate[0..2].include?('ABC') ? self.categoria1! : self.categoria2!
  end
end
