defmodule XqlVerifyTest do
  use XqlVerify.DataCase
  use ExUnitProperties

  import StreamData

  property "passes all valid coordinates" do
    check all foo_map <- map_of(string(:printable), one_of([json_valid(), list_of(json_valid())]), min_length: 500), max_runs: 5_000 do
    #check all foo_map <- map_of(string(:printable), string(:printable)), max_runs: 5_000 do
      foo = %XqlVerify.Foo{bar: foo_map}
      {:ok, _} = XqlVerify.Repo.insert(foo)
    end
  end

  defp json_valid do
    one_of([string(:printable), boolean(), float(), integer(), atom(:alphanumeric)])
  end
end
