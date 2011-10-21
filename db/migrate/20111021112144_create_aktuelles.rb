class CreateAktuelles < ActiveRecord::Migration
  def self.up
    create_table :aktuelles do |t|
      t.timestamps
    end
    Aktuelle.create_translation_table! :title => :string, :text => :text
  end

  def self.down
    drop_table :aktuelles
    Aktuelle.drop_translation_table!
  end
end
