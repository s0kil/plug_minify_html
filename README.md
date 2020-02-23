# PlugMinifyHtml

**A Plug that minifies HTML response body**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `plug_minify_html` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:plug_minify_html, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
# Simple
plug PlugMinifyHtml


# Browser Pipeline
pipeline :browser do
  plug :accepts, ["html"]
  plug :fetch_session
  plug :fetch_flash
  plug :protect_from_forgery
  plug :put_secure_browser_headers
  plug PlugMinifyHtml
end
```

### Resurrection Of [minify_response](https://github.com/gravityblast/minify_response)
