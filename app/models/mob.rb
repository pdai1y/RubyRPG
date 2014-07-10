# == Schema Information
#
# Table name: mobs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Mob < ActiveRecord::Base
end
