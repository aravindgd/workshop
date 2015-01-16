class CreateEditionParticipants < ActiveRecord::Migration
  def change
    create_table :edition_participants do |t|
      t.belongs_to :edition, index: true
      t.belongs_to :participant, index: true

      t.timestamps null: false
    end
    add_foreign_key :edition_participants, :editions
    add_foreign_key :edition_participants, :participants
  end
end
