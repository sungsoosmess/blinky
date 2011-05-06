map = "r_to_theta"
gumbyScale = 0.75
gumbyScaleInv = 1.0/gumbyScale

function r_to_theta(r)
   local el = 2*atan2(r,2)
   if el > pi then
      return nil
   end
   return el * gumbyScaleInv
end

function init(fov,width,height,frame)
   return 2*tan(fov*0.25*gumbyScale) / (frame*0.5);
end