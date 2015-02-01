class AddAuthenticationTokenToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :auth_token, :string, default: ""
    add_index :applicants, :auth_token, unique: true
  end
end
