defmodule RaffleyWeb.RulesHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use RaffleyWeb, :html

  embed_templates "rules_html/*"
end
