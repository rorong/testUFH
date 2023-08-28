class PrivacyPolicyController < ApplicationController
  skip_before_action :authenticate_user!

  def welcome
  end

  def privacy_policy
  end

  def terms_and_conditions
  end
end
