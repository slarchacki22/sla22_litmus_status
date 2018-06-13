class Api::V1::StatusController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :destroy_session

  def destroy_session
    request.session_options[:skip] = true
  end

  def index
    @statuses = Status.all
    render json: @statuses
  end

  def show
    @status = Status.find(params[:id])
    render json: @status
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      render json: @status
    else
      render json: { message: "There was an error with your request!", errors: @status.errors }, status: 400
    end
  end

  def update
    @status = Status.find(params[:id])
    if @status.update(status_params)
      render json: @status
    else
      render json: { message: "There was an error updating your request!", errors: @status.errors }, status: 400
    end
  end

  def destroy
    @status = Status.find(params[:id])
    if @status.destroy
      render json: { message: params[:id] + " was destroyed!" }
    else
      render json: { message: "There was an error deleting your request!", errors: @status.errors }, status: 400
    end
  end

  private
  def status_params
    params.permit( :current_status, :status_message)
  end
end

