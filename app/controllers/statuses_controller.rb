class StatusesController < ApplicationController
  def status
    @current = Status.limit(1).order(updated_at: :desc).first
    #@history = Status.limit(10).offset(1).order(updated_at: :asc)
    @history = Status.order(updated_at: :asc).reverse_order.limit(10).offset(1).reverse
  end

end

