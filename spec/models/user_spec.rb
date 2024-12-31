# == Schema Information
#
# Table name: users
#
#  id                                                                                       :bigint           unsigned, not null, primary key
#  allow_password_change(パスワード変更を強制するかどうかを表すフラグ)                      :boolean          default(FALSE)
#  confirmation_sent_at(メールアドレス認証のためのメールを送った日時)                       :datetime
#  confirmation_token(メールアドレス確認（いわゆるサインアップ時のメール認証）用のトークン) :string(255)
#  confirmed_at(メールアドレス認証が完了した日時)                                           :datetime
#  email(メールアドレス)                                                                    :string(255)
#  encrypted_password(Deviseが管理するパスワードをハッシュ化した文字列)                     :string(255)      default(""), not null
#  name(ユーザー名)                                                                         :string(255)
#  provider(プロバイダー)                                                                   :string(255)      default("email"), not null
#  remember_created_at(一定期間、自動ログインを継続するための仕組み)                        :datetime
#  reset_password_sent_at(パスワードリセットトークンを送信した日時)                         :datetime
#  reset_password_token(パスワードリセット用のトークン)                                     :string(255)
#  tokens(devise_token_auth 固有のトークン管理に使われる)                                   :text(65535)
#  uid                                                                                      :string(255)      default(""), not null
#  created_at                                                                               :datetime         not null
#  updated_at                                                                               :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#valid?' do
    let(:email) { 'test@example.com' }

    pp let(:email)
  end
end
