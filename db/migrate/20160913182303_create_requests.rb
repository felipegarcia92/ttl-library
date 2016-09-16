class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :request_date
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
