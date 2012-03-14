class CreateLoginLogs < ActiveRecord::Migration
  def change
    create_table :login_logs do |t|
      t.string :imei
      t.string :imsi
      t.string :mobile
      t.string :q
      t.string :request_ip

      t.timestamps
    end
  end
end
