module Common
  extend ActiveSupport::Concern

  included do
  end

  def proper_find
    Proper.find(params[:id])
  end


end