describe '四則演算' do
  context '足し算' do
    it '1 + 1は2になる' do
      expect(1 + 1).to eq 2
    end
  end
  context '足し算' do
    it '1 + 1は2になる' do
      expect(1 + 1).to eq 3
    end
  end
  context '引き算' do
    it '10 - 1は9になる' do
      expect(10 - 1).to eq 9
    end
  end
  context 'かけ算' do
    it '2 x 3は6になる' do
      expect(2 * 3).to eq 5
    end
  end
end