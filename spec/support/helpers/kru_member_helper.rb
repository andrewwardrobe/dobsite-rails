module KruMemberTestHelpers
  def kru_member_data
    [
      { name: 'Kru Member 1', bio: 'Some Bio', image: 'image.png' },
      { name: 'Kru Member 2', bio: 'Some Bio', image: 'image.png' },
      { name: 'Kru Member 3', bio: 'Some Bio', image: 'image.png' },
      { name: 'Kru Member 4', bio: 'Some Bio', image: 'image.png' },
      { name: 'Kru Member 5', bio: 'Some Bio', image: 'image.png' }
    ]
  end

  def kru_member_file
    Rails.root + 'spec/data/kru.yaml'
  end
end
