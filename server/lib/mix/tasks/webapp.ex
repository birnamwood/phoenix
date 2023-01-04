defmodule Mix.Tasks.Webapp do
  @moduledoc """
    React frontend compilation and bundling for production.
  """
  use Mix.Task
  require Logger
  # Path for the frontend static assets that are being served
  # from our Phoenix router when accessing /app/* for the first time
  @public_path "./priv/static/webapp"
  @front_path "../front"
  @front_build_path "../front/build"

  @shortdoc "Compile and bundle React frontend for production"
  def run(_) do
    Logger.info("📦 - Installing NPM packages")
    System.cmd("npm", ["install", "--quiet"], cd: @front_path)

    Logger.info("⚙️  - Compiling React frontend")
    System.cmd("npm", ["run", "build"], cd: @front_path)

    Logger.info("🚛 - Moving dist folder to Phoenix at #{@public_path}")
    # First clean up any stale files from previous builds if any
    System.cmd("rm", ["-rf", @public_path])
    System.cmd("cp", ["-R", @front_build_path, @public_path])

    Logger.info("⚛️  - React frontend ready.")
  end
end
