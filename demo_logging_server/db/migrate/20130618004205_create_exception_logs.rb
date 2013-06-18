class CreateExceptionLogs < ActiveRecord::Migration
  def change
    create_table :exception_logs do |t|
      t.string :URL
      t.string :Message
      t.string :Parameters
      t.string :backtrace
      t.integer :count
      t.datetime :time_stamp

      t.timestamps
    end
  end
end
