alias GeocodeExperiment.{AddressFileReader, Geocode}

defmodule GeocodeExperiment.CLI do
  def main(args \\ []) do
    args
    |> parse_args()
    |> response()
    |> AddressFileReader.read_address_file
    |> Geocode.geocode_addresses
  end

  defp parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(switches: [upcase: :boolean])

    {opts, List.to_string(word)}
  end

  defp response({_opts, word}) do
    word
  end
end