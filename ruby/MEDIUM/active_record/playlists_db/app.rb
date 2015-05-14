require 'pg'
require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
	adapter: 'postgresql',
	host: 'localhost',
	database: 'playlists_db'
)

class Song < ActiveRecord::Base
  has_many :playlists
  has_many :users, through: :playlists
end

class User < ActiveRecord::Base
  has_many :playlists
  has_many :songs, through: :playlists
end 

class Playlist < ActiveRecord::Base
  belongs_to :user
  belongs_to :song
end 

binding.pry
