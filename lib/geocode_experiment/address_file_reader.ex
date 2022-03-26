defmodule GeocodeExperiment.AddressFileReader do
  def read_address_file(file_name) do
    File.read(file_name)
    |> read_contents
  end

  defp read_contents ({:ok, contents}) do
    addresses = contents
                |> String.split("\n", trim: true)
    count = Enum.count(addresses)
    indexes = Enum.to_list(0..count-1)
    Enum.zip(indexes, addresses)
  end

  defp read_contents({:error, _}) do
    []
  end
end