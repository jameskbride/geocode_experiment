defmodule GeocodeExperiment do
  defmodule AddressFileReader do
    def read_address_file(file_name) do
      File.read(file_name)
      |> read_contents
    end

    defp read_contents ({:ok, contents}) do
      contents
      |> String.split("\n", trim: true)
      |> Enum.map(&IO.puts/1)
    end

    defp read_contents({:error, _}) do
      IO.puts("Invalid file")
    end
  end
end