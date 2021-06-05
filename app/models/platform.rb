class Platform < ActiveHash::Base
self.data = [
  { id: 1, name: '---' },
  { id: 2, name: 'PC' },
  { id: 3, name: 'PS4・PS5' },
  { id: 4, name: 'switch' },
  { id: 5, name: 'スマホ' }
]
include ActiveHash::Associations
has_many :rooms
end