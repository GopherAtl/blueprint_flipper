data:extend(
{
  {
    type = "font",
    name = "blpflip_font",
    from = "default",
    size = 10
  }
}
)

data.raw["gui-style"].default["blpflip_button_horizontal"] =
{
    type = "button_style",
    parent = "button_style",
    width = 32,
    height = 32,
    top_padding = 6,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0,
    font = "blpflip_font",
    default_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
            filename = "__blueprint_flipper__/graphics/gui.png",
            priority = "extra-high-no-scale",
            width = 32,
            height = 32,
			x = 0,
        }
    },
    hovered_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
            filename = "__blueprint_flipper__/graphics/gui.png",
            priority = "extra-high-no-scale",
            width = 32,
            height = 32,
			x = 32,
        }
    },
    clicked_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
            filename = "__blueprint_flipper__/graphics/gui.png",
            width = 32,
            height = 32,
			x = 32,
        }
    }
}

data.raw["gui-style"].default["blpflip_button_vertical"] =
{
    type = "button_style",
    parent = "button_style",
    width = 32,
    height = 32,
    top_padding = 6,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0,
    font = "blpflip_font",
    default_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
            filename = "__blueprint_flipper__/graphics/gui.png",
            priority = "extra-high-no-scale",
            width = 32,
            height = 32,
            x = 64,
        }
    },
    hovered_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
            filename = "__blueprint_flipper__/graphics/gui.png",
            priority = "extra-high-no-scale",
            width = 32,
            height = 32,
            x = 96,
        }
    },
    clicked_graphical_set =
    {
        type = "monolith",
        monolith_image =
        {
            filename = "__blueprint_flipper__/graphics/gui.png",
            width = 32,
            height = 32,
            x = 96,
        }
    }
}
