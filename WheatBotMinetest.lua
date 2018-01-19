if start==nil then
  self.label("Wheatbot");
  self.set_properties({
    visual_size={x=0.5,y=0.5},
    collisionbox={-0.25,-0.25,-0.25,0.25,0.25,0.25},
    physical=false;
  });
  ripe="farming:wheat_8"
  seed="farming:seed_wheat"
  start=1; dir=1; insert.right("farming:wheat 99"); move.forward();
end;

if (read_node.forward() == "default:torch") then
  self.remove();
elseif (read_node.forward() == ripe) then
  dig.forward()
  place.forward(seed)
  move.forward();
elseif (read_node.forward_down() == "farming:soil_wet") then
  place.forward(seed)
  move.forward();
elseif (read_node.forward_down() == "farming:soil_wet") then
  move.forward();
elseif (dir==1) then
  turn.left()
  dir=4
    if (read_node.forward() == ripe) then
        dig.forward()
        place.forward(seed)
        move.forward();
    elseif (read_node.forward_down() == "farming:soil_wet") then
        place.forward(seed)
        move.forward();
    elseif (read_node.forward_down == "farming:soil_wet") then
        move.forward();
    end
  turn.left()
  dir=3;
elseif (dir==3) then
  turn.right()
  dir=4
    if (read_node.forward() == ripe) then
        dig.forward()
        place.forward(seed)
        move.forward();
    elseif (read_node.forward_down() == "farming:soil_wet") then
        place.forward(seed)
        move.forward();
    elseif (read_node.forward_down() == "farming:soil_wet") then
        move.forward();
    end
  turn.right()
  dir=1;
end
