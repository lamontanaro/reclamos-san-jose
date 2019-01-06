class CreateClaims < ActiveRecord::Migration[5.2]
  def change
    create_table :claims do |t|
      t.integer :claim_type
      t.string :body
      t.string :response
      t.string :claim_code
      t.integer :state

      t.timestamps
    end
  end
end
