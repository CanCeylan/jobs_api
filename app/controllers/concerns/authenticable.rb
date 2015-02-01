module Authenticable

  # Devise methods overwrites
  def current_applicant
    @current_applicant ||= Applicant.find_by(auth_token: request.headers['Authorization'])
  end

  def authenticate_with_token!
    render json: { errors: "Not authenticated" },
                status: :unauthorized unless current_applicant.present?
  end
end