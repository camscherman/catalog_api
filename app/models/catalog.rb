class Catalog < ApplicationRecord
  has_many :books, dependent: :nullify
end
