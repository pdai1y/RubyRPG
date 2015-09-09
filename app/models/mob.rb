# == Schema Information
#
# Table name: mobs
#
#  id         :integer          not null, primary key
#  name       :string
#  desc       :string
#  created_at :datetime
#  updated_at :datetime
#

class Mob < ActiveRecord::Base
end
