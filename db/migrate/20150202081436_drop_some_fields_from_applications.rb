class DropSomeFieldsFromApplications < ActiveRecord::Migration
  def change
  	remove_column :applications, :linkedin_url
  	remove_column :applications, :github_url
  	rename_column :applications, :other_url, :links
  end
end
