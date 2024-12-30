class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users, id: :bigint, unsigned: true do |t|
      ## Required
      t.string :provider, :null => false, :default => "email",:comment => "プロバイダー"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => "", :comment => "Deviseが管理するパスワードをハッシュ化した文字列"

      ## Recoverable
      t.string   :reset_password_token,:comment => "パスワードリセット用のトークン"
      t.datetime :reset_password_sent_at,:comment => "パスワードリセットトークンを送信した日時"
      t.boolean  :allow_password_change, :default => false,:comment => "パスワード変更を強制するかどうかを表すフラグ"

      ## Rememberable
      t.datetime :remember_created_at,:comment => "一定期間、自動ログインを継続するための仕組み"

      ## Confirmable
      t.string   :confirmation_token,:comment => "メールアドレス確認（いわゆるサインアップ時のメール認証）用のトークン"
      t.datetime :confirmed_at,:comment => "メールアドレス認証が完了した日時"
      t.datetime :confirmation_sent_at,:comment => "メールアドレス認証のためのメールを送った日時"
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## User Info
      t.string :name,:comment => "ユーザー名"
      t.string :email,:comment => "メールアドレス"
      # t.string :nickname
      # t.string :image

      ## Tokens
      t.text :tokens,:comment => "devise_token_auth 固有のトークン管理に使われる"

      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, [:uid, :provider],     unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
