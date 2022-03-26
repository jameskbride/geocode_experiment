defmodule GeocodeExperiment do
  defmodule AddressFileReader do
    def read_address_file(file_name) do
      case File.read(file_name) do
        {:ok, contents} ->
          contents
          |> String.split("\n", trim: true)
          |> Enum.map(&IO.puts/1)
        {:error, _} ->
          IO.puts("Invalid file")
      end
    end
  end
end