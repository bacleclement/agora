module ApplicationHelper
end

def has_profile?
  current_user.profile.present?
end
