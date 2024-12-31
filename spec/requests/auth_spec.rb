require 'rails_helper'

RSpec.describe 'ユーザー登録を行う', type: :request do
  # 有効なテストデータ
  let(:valid_params) do
    {
      name: 'test',
      email: 'test@example.com',
      password: 'password123'
    }
  end
  # 無効なテストデータ
  let(:invalid_params) do
    {
      name: 'test',
      email: '',
      password: 'test1234'
    }
  end
  describe 'POST /api/v1/auth にリクエスト' do
    context '有効なパラメータ' do
      it '新しいユーザーが作成される。successを返す' do
        # ユーザー登録をした際にDBに登録されたか確認する。
        # change(User, :count).by(1)これはレコードが増えたかどうか確認する
        expect {
          post '/api/v1/auth', params: valid_params
        }.to change(User, :count).by(1)

        # HTTPステータスが成功した場合の検証
        expect(response).to have_http_status(:success)
        # 上記の処理が成功した場合、jsonデータをhash化し、responsebodyの中身を検証する
        json_response = JSON.parse(response.body)
        expect(json_response['status']).to eq('success')
      end
    end

    context '無効なパラメーターemailが空の場合' do
      it 'ユーザー登録に失敗する。statusがerrorを返す' do
        expect {
          post '/api/v1/auth', params: invalid_params
          # to change(User, :count).by(0)ともかける
        }.not_to change(User, :count)
        expect(response).to have_http_status(:unprocessable_entity)
        json_response = JSON.parse(response.body)
        expect(json_response['status']).to eq('error')
        # レスポンスメッセージも適切か？
        expect(json_response['errors']).to include('email')
        expect(json_response['errors']['email']).to include('必須入力項目です')
      end
    end
  end
end
