require "randomizr/version"
require "active_record"

# http://paulbarry.com/articles/2009/08/30/active-record-random
class ActiveRecord::Base
  def self.randomizr
    if (c = count) > 0
      offset(rand c).first
    end
  end
end
