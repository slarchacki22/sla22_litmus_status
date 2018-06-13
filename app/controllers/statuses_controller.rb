class StatusesController < ApplicationController
  def status
    @current = Status.limit(1).order(updated_at: :desc).first
    @history = Status.last(10)#.offset(1).order(updated_at: :desc)
  end

end

