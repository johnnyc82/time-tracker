# == Schema Information
#
# Table name: task_times
#
#  id         :integer          not null, primary key
#  estimated  :integer
#  elapsed    :integer
#  total      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_id    :integer
#

require 'test_helper'

class TaskTimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
