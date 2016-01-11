class AddTypeToPocketmonsters < ActiveRecord::Migration
  def change
    add_column :pocketmonsters, :kind, :string
  end
end
