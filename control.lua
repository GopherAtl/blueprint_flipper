require("defines")

local function flip_v(player_index)
  local cursor= game.players[player_index].cursor_stack
  if cursor.valid_for_read and cursor.name=="blueprint" and cursor.is_blueprint_setup() then
    local ents=cursor.get_blueprint_entities()
    for i=1,#ents do
      local dir=ents[i].direction or 0
      if ents[i].name=="curved-rail" then
        ents[i].direction=(13-dir)%8
      else
        ents[i].direction=(12-dir)%8
      end
      ents[i].position.y=-ents[i].position.y
    end
    cursor.set_blueprint_entities(ents)
  end
end

local function flip_h(player_index)
  local cursor= game.players[player_index].cursor_stack
  if cursor.valid_for_read and cursor.name=="blueprint" and cursor.is_blueprint_setup() then
    local ents=cursor.get_blueprint_entities()
    for i=1,#ents do
      local dir=ents[i].direction or 0
      if ents[i].name=="curved-rail" then
        ents[i].direction=(9-dir)%8
      else
        ents[i].direction=(16-dir)%8
      end
      ents[i].position.x=-ents[i].position.x
    end
    cursor.set_blueprint_entities(ents)
  end
end

local function doButtons(player_index)
  if not game.players[player_index].gui.top.blueprint_flipper_flow then
    local flow=game.players[player_index].gui.top.add{type="flow",name="blueprint_flipper_flow",direction="vertical"}
    flow.add{type="button",name="blueprint_flip",caption="Flip BP Horiz.",style="bpflip_button_style"}
    flow.add{type="button",name="blueprint_flop",caption="Flip BP Vert.",style="bpflip_button_style"}
  end
end

script.on_event(defines.events.on_gui_click,function(event)
  if event.element.name=="blueprint_flip" then
    flip_h(event.player_index)
  elseif event.element.name=="blueprint_flop" then
    flip_v(event.player_index)
  end
end)

script.on_event(defines.events.on_player_created,function(event) doButtons(event.player_index) end)

script.on_configuration_changed(function(data) for i=1,#game.players do doButtons(i) end end)
script.on_init(function() for i=1,#game.players do doButtons(i) end end)
