

hook.Add("NetworkEntityCreated", "fixfps_", function(ent)
    timer.Simple( 1, function() if not IsValid(ent) then return end
        
    
    ent.RenderOverride = function() 
            if (LocalPlayer():GetViewEntity():GetPos():Distance(ent:GetPos()) < 1000) then 
                ent:DrawModel()
            end
        end
    end)
end)

