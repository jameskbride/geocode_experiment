defmodule GeocodeExperiment.Geocode do
  @moduledoc false

  def geocode_addresses(addresses) do
    Enum.map(addresses, fn (address) ->
      geocode_address(elem(address, 0), elem(address, 1))
    end)
  end

  defp geocode_address(index, address) do
    # Sleeping here so we don't hit the api limit.
    :timer.sleep(index * 1)
    response = GoogleMaps.geocode(address)
    case response do
      {:ok, %{"results" => [result]}} ->
        %{
          "geometry" => %{
            "location" => %{
              "lat" => lat,
              "lng" => lng,
            }
          }
        } = result
        IO.puts("#{lat},#{lng}")
      {:error, _} ->
        IO.puts("Error")
    end
  end
end
