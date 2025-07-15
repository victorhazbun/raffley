defmodule RaffleyWeb.RulesHTML do
  use RaffleyWeb, :html

  embed_templates "rules_html/*"

  def show(assigns) do
    ~H"""
    <div class="rules">
      <%!-- @greeting comes from the spy plug in the router --%>
      <h1>{@greeting}! Don't Forget...</h1>
      <p>
        {@rule.text}
      </p>
    </div>
    """
  end
end
