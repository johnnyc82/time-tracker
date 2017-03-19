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

class Task < ActiveRecord::Base
  before_create :ensure_default_state
  def ensure_default_state
    self.state ||= 0
    self.time_elapsed ||= 0
    self.time_est ||= 0
  end

  def add_to_elapsed_time(current_time)
    self.time_elapsed += ChronicDuration.parse(current_time)
  end

  def nice_time_elapsed
    ChronicDuration.output(self.time_elapsed)
  end

  def discrepancy
    ChronicDuration.output(self.time_est - self.time_elapsed)
  end

  belongs_to :list

  enum state: [ :incomplete, :complete ]

end
