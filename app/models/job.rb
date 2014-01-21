class Job < ActiveRecord::Base
  before_create :set_start

  private
    def set_start
      self.start = Time.now
    end
end
