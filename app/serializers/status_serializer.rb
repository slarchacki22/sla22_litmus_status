class StatusSerializer < ActiveModel::Serializer
  attributes :id, :current_status, :status_message, :created_at, :updated_at

  attribute(:current_status) { human_boolean(object) }

  def human_boolean(object)
    object.current_status ? 'UP' : 'DOWN'
  end
end



