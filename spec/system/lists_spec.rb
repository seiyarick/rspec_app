require 'rails_helper'

describe '投稿のテスト' do
  let!(:list){create(:list,title:'hoge',body:'hoge')}
  describe 'トップ画面(top_path)のテスト' do
    before  do
      visit top_path#visitで指定したパスへの画面遷移
    end
    context '表示の確認' do
      it 'トップ画面(top_path)に「ここはTopページです」が表示されているか' do
        expext(page).to eq('ここはTopページです')
      end
      it 'top_pathが"/top"であるか' do
        expect(current_path).to eq('/top')#current_pathは現在のページ。beforeで遷移している
      end  
    end  
  end
  
  describe '投稿画面のテスト' do
    before do
      visit new_list_path
    end
    context '表示の確認' do
      it 'new_list_pathが"/lists/new"であるか' do
        expect(current_path).to eq('/list_new')
      end
      it '投稿ボタンが表示されているか' do
        expect(current_path).to have_buttun
      end  
    end 
    context '投稿処理のテスト' do
      it '投稿後のリダイレクト先は正しいか' do
        fill_in 'list[title]', with: Faker::Lorem.characters(number:10)#list[title]にFaker::Loremでダミーデータを入力
        fill_in 'list[body]', with: Faker::Lorem.characters(number:30)#list[body]にFaker::Loremでダミーデータを入力
        click_button
        expect(page).to have_current_path list_path(List.last)#have_current_pathで現在のURLを取得
      end                                                     #投稿後のページURLが正しいURLパスであるかwp判定
    end  
  end
  
  describe '一覧画面のテスト' do
    before do
      visit lists_path
    end
    context '一覧の表示とリンクの確認' do
      it '一覧表示画面に投稿されたものが表示されているか' do
        expect(page).to have_content list.title#投稿したもののtitleの表示
        expect(page).to have_link list.title#投稿したもののtitleをリンクとして表示
      end  
    end  
  end  
   
end