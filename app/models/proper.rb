class Proper < ApplicationRecord
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :reject_stations

  private
  
  def reject_stations(attributes)
    attributes[:line_name].blank? || attributes[:station_name].blank? || attributes[:minute_walk].blank?
  end
end
