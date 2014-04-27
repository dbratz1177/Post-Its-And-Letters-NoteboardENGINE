class CreateNoteboardNoteboards < ActiveRecord::Migration
  def change
    create_table :noteboard_noteboards do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
