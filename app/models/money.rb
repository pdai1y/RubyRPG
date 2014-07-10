# == Schema Information
#
# Table name: money
#
#  id         :integer          not null, primary key
#  copper     :integer
#  silver     :integer
#  gold       :integer
#  platinum   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Money < ActiveRecord::Base

end
