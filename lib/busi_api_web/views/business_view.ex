defmodule BusiApiWeb.BusinessView do
  use BusiApiWeb, :view
  alias BusiApiWeb.BusinessView

  def render("index.json", %{business: business}) do
    %{data: render_many(business, BusinessView, "business.json")}
  end

  def render("show.json", %{business: business}) do
    %{data: render_one(business, BusinessView, "business.json")}
  end

  def render("business.json", %{business: business}) do
    %{id: business.id,
      name: business.name,
      description: business.description,
      tag: business.tag}
  end
end
