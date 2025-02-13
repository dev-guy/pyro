defmodule ComponentPreviewer.BackLive do
  @moduledoc false
  use ComponentPreviewer, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <.header>
      &lt;.back&gt;<:actions>
        <.doc_url page="Pyro.Components.Core.html#back/1" />
      </:actions>
    </.header>

    <.code
      id="code-example-default"
      language="heex"
      class="text-sm"
      source={~s|<.back navigate={~p"/"}>Go back to the about page.</.back>|}
    />
    <p>
      <.back navigate={~p"/"}>Go back to the about page.</.back>
    </p>

    <.code
      id="code-example-custom"
      language="heex"
      class="text-sm"
      source={
        ~s|<.back icon_name="hero-arrow-left-solid" navigate={~p"/"}>Go back to the about page.</.back>|
      }
    />
    <p>
      <.back icon_name="hero-arrow-left-solid" navigate={~p"/"}>Go back to the about page.</.back>
    </p>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign(:page_title, "<.back>")}
  end
end
