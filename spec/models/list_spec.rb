require 'rails_helper'#spec/factories/rails_helper.rbを読み込んでいる。設定などを行うファイル。

describe 'モデルのテスト' do
  it '有効な投稿内容の場合は保存されるか' do
    expect(FactoryBot.build(:list)).to be_valid
  end  
end

