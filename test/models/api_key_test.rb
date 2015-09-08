# == Schema Information
#
# Table name: api_keys
#
#  id           :integer          not null, primary key
#  access_token :string           not null
#  expires_at   :datetime
#  user_id      :integer          not null
#  active       :boolean          default(TRUE), not null
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_api_keys_on_access_token  (access_token) UNIQUE
#  index_api_keys_on_user_id       (user_id)
#

require 'test_helper'

class ApiKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
