class Game < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'APEX' },
    { id: 3, name: 'フォートナイト' },
    { id: 4, name: 'CoD:Warzone' },
    { id: 5, name: '荒野行動' },
    { id: 6, name: 'H1Z1'},
    { id: 7, name: 'Hyper Scape'}
  ]
  include ActiveHash::Associations
  has_many :rooms
end