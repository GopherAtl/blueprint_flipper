data:extend({
    {
        type = "font",
        name = "bpflip_font",
        from = "default",
        size = 10,
    },
})

local button_style = {
    type = "button_style",
    parent = "button_style",
    font = "bpflip_font",
    scalable = false,
    top_padding = 0,
    bottom_padding = 0,
    left_padding = 2,
    right_padding = 2,
    bottom_margin=0,
    top_margin=0,
}


data.raw["gui-style"].default["bpflip_button_style"] = button_style
