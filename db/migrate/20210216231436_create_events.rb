require 'date'

class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
    	t.string :title
    	t.text :desc
    	t.date :date
    	t.time :time
    	t.belongs_to :user
      t.timestamps
    end
  end
end
