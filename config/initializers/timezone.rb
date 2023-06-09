Timezone::Lookup.config(:geonames) do |c|
  c.username = 'annebortoli' # your_geonames_username_goes_here
end

Timezone::Lookup.config(:google) do |c|
  c.api_key = ENV['GOOGLE_GEOCODING_KEY'] # your_google_api_key_goes_here
  c.offset_etc_zones = true
end
