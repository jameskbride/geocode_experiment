defmodule GeocodeExperiment do
  defmodule AddressFileReader do
    def read_address_file(file_name) do
      {:ok, contents} = File.read(file_name)
      contents
      |> String.split("\n", trim: true)
      |> Enum.map(&IO.puts/1)
    end
  end
end