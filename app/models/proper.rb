class Proper < ApplicationRecord
  has_many :staions, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true
end
