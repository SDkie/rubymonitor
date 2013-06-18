class ExceptionLog < ActiveRecord::Base
  attr_accessible :Message, :Parameters, :URL, :backtrace, :count, :time_stamp
end
