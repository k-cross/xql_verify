defmodule XqlVerifyTest do
  use XqlVerify.DataCase
  use ExUnitProperties

  import StreamData

  property "passes all valid coordinates" do
    check all n <- integer(Range.new(500, 20_000)),
              ks <- uniq_list_of(atom(:alphanumeric), length: n),
              vs <- list_of(term(), length: n),
              foo_map <- map_of(ks, vs, min_length: 500) do
      foo = %XqlVerify.Foo{bar: foo_map}
      {:ok, _} = XqlVerify.Repo.insert(foo)
    end
  end
end
