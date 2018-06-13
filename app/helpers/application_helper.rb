module ApplicationHelper
  def human_boolean(boolean)
    boolean ? 'UP' : 'DOWN'
  end

  def alert(boolean)
    boolean ? 'alert-success' : 'alert-danger'
  end
end
