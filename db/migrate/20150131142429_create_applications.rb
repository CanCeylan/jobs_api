class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :job, index: true
      t.references :applicant, index: true
      t.integer :salary
      t.string :linkedin_url
      t.string :github_url
      t.string :reason
      t.string :explanation
      t.string :other_url

      t.timestamps null: false
    end
    add_foreign_key :applications, :jobs
    add_foreign_key :applications, :applicants
  end
end
