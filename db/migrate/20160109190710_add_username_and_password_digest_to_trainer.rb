class AddUsernameAndPasswordDigestToTrainer < ActiveRecord::Migration
  def change
    add_column :trainers, :username, :string
    add_column :trainers, :password_digest, :string
  end
end
