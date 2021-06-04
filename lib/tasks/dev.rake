desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do
    p "Creating sample data"

    starting = Time.now

  Album.destroy_all
  Albumartistmap.destroy_all
  Artist.destroy_all
  Event.destroy_all
  Track.destroy_all
  Trackartistmap.destroy_all
  User.destroy_all

  people = Array.new(10) do
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
    }
  end

  people << { first_name: "Alice", last_name: "Smith" }
  people << { first_name: "Bob", last_name: "Smith" }
  people << { first_name: "Carol", last_name: "Smith" }
  people << { first_name: "Doug", last_name: "Smith" }

  people.each do |person|
    username = person.fetch(:first_name).downcase

    user = User.create(
      email: "#{username}@example.com",
      password: "password",
      username: username.downcase,
      private: [true, false].sample,
    )

    p user.errors.full_messages
  end

  users = User.all

  users.each do |user|
    rand(15).times do
      album = Album.create(
        title: Faker::Music.album,
      )  

      artist = Artist.create(
        name: Faker::Music.band
      )

      albumartistmap = Albumartistmap.create(
        album_id: album.id,
        artist_id: artist.id
      )

      track = Track.create(
        title: Faker::Music::RockBand.song,
        album_id: album.id
      )

      trackartistmap = Trackartistmap.create(
        track_id: track.id,
        artist_id: artist.id
      )

      event = user.events.create(
        date: Faker::Date.backward(days: 14),
        time: Faker::Time.backward(days: 14, period: :evening),
        temperature: "cool",
        weather: "overcast",
        track_id: track.id
      )

      p event.errors.full_messages


      
    end
  end

#   ending = Time.now
#   p "It took #{(ending - starting).to_i} seconds to create sample data."
  p "There are now #{User.count} users."
#   p "There are now #{FollowRequest.count} follow requests."
#   p "There are now #{Photo.count} photos."
#   p "There are now #{Like.count} likes."
#   p "There are now #{Comment.count} comments."

end
