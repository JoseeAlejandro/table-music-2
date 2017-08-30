# frozen_string_literal: true
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false
      t.string :password_digest, null: false
      t.string :given_name, index: { unique: true }
      t.string :family_name, index: { unique: true }

      t.string :user_handle, index: { unique: true }

      t.timestamps null: false
    end
  end
end
