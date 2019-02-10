module UsersHelper
  def user_has_profile?(user = current_user)
    return false unless user.present?
    Profile.where(user_id: user.try(:id) || user).exists?
  end
end
