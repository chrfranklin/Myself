class CreateSendEmails < ActiveRecord::Migration
  def change
    create_table :send_emails do |t|
      t.string :email
      t.column "created_at", :datetime
      
    end
  end
end
