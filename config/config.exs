import Config

config :google_maps,
       api_key: System.get_env("GOOGLE_MAPS_API_KEY") ||
         raise("Please set the GOOGLE_MAPS_API_KEY")
