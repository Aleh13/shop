class ApplicationController < ActionController::Base
  def render_403
    render file: 'public/403.html', status: :forbidden
  end

  def render_404
    render file: 'public/404.html', status: :not_found
  end
end

def admin?
  #true
  render_403 unless params[:admin]
end