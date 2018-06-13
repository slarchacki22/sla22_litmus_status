class Status < ApplicationRecord
  validates :current_status, inclusion: { in: [true, false] }
  validate :supply_status_or_message

  def self.latest
    self.order(updated_at: :desc).first
  end

  def self.latest_status
    self.where.not(site_down: nil).order(updated_at: :desc).first
  end

  private
  def supply_status_or_message
    if current_status.blank? || status_message.blank?
      errors[:base] << "Current Status or Status Message are required"
    end
  end
end