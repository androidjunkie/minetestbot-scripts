if start==nil then
  self.label("Randombot :)");
  self.set_properties({
    visual_size={x=0.50,y=0.50},
    collisionbox={-0.25,-0.25,-0.25,0.25,0.25,0.25},
    physical=false;
    y=math.random(1, 15);
  });
 start=1; turn.left(); move.forward(); x=2;
end

if (x>10) then
    turn.right();
    x=0;
elseif (read_node.forward() == "air") then
    move.forward();
    x=math.random(1, 15);
elseif (read_node.left() == "air") then
    turn.left();
    x=math.random(1, 15);
elseif (read_node.right() == "air") then
    turn.right();
    x=math.random(1, 15);
end

