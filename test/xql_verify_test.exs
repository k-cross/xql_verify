defmodule XqlVerifyTest do
  use XqlVerify.DataCase
  use ExUnitProperties

  import StreamData

  property "passes all valid coordinates" do
    check all foo_map <- map_of(term(), term(), min_length: 500) do
      foo = %XqlVerify.Foo{bar: foo_map}
      {:ok, _} = XqlVerify.Repo.insert(foo)
    end
  end
end
