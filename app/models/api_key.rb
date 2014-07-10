# == Schema Information
#
# Table name: api_keys
#
#  id           :integer          not null, primary key
#  user_id      :integer          not null
#  access_token :string(255)      not null
#  expires_at   :datetime
#  active       :boolean          default(TRUE), not null
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_api_keys_on_access_token  (access_token) UNIQUE
#  index_api_keys_on_user_id       (user_id)
#

class ApiKey < ActiveRecord::Base
  
  before_create :generate_access_token
  before_create :set_expiration
  belongs_to :user

  def expired?
    DateTime.now >= self.expires_at
  end

  private

  def generate_access_token
    begin
      self.access_token = SecureRandom.hex
    end while self.class.exists?(access_token: access_token)
  end

  def set_expiration
    self.expires_at = DateTime.now+30
  end

end
