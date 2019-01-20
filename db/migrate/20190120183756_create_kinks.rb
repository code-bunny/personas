class CreateKinks < ActiveRecord::Migration[6.0]
  def change
    create_table :kinks do |t|
      t.string :title
      t.text :description
      t.references :profile

      t.timestamps
    end
  end
end
