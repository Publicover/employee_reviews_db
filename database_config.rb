require 'active_record'

ActiveRecord::Base.establish_connection(
adapter: 'sqlite3',
database: 'db.sqlite3'
)


=begin
first
run the migration

third: make new album with .create
fourth: call new album, change things, .save on third line
fifth: Album.find(1) example (change name, save back)
sixth: find album with .where(name: "OKCOMPUTER").first
seventh: things can be chained together, .order(:id)
eigth: can't use instance variables anymore, have to change them to self.whatever
ninth: wanted to run



album.artist_id = artist_id
album.save

class Album etc.
  has_many :artist

artist.albums << album
artist.save

=end


=begin

************
          ALBUM.ARTIST_ID = ARTIST.ID
                                      *************
=end
