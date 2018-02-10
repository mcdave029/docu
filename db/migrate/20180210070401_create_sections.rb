class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
