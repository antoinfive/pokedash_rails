class AddTrainerReferenceToPocketmonsters < ActiveRecord::Migration
  def change
    add_reference :pocketmonsters, :trainer, index: true, foreign_key: true
  end
end
