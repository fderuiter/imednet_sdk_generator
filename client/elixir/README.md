# MednetEDCAPI

The Mednet EDC (Electronic Data Capture) REST API provides a single-point of access for reading data stored across iMednet data services. This specification documents all available endpoints in the latest version of the API. 

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `mednet_edcapi` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:mednet_edcapi, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/mednet_edcapi][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :mednet_edcapi, base_url: "https://edc.prod.imednetapi.com/api/v1/edc"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`MednetEDCAPI.Connection.new/1`:

```elixir
client = MednetEDCAPI.Connection.new(base_url: "https://edc.prod.imednetapi.com/api/v1/edc")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/mednet_edcapi
