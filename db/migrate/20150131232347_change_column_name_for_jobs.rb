class ChangeColumnNameForJobs < ActiveRecord::Migration
  def change
  	rename_column :jobs, :type, :role
  end
end
