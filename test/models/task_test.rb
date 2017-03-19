# == Schema Information
#
# Table name: tasks
#
#  id           :integer          not null, primary key
#  title        :string
#  state        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  list_id      :integer
#  time_elapsed :integer
#  time_est     :integer
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
