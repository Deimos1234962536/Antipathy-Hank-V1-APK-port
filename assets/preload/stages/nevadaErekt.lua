local xx = 605.64
local yy = 805.49
local xx2 = 1368.82
local yy2 = 917.40
local ofs = 50
local followchars = true

function onCreate()
	--PRELOADING IT
	precacheImage('antipathy/count/down0')
	precacheImage('antipathy/count/down1')
	precacheImage('antipathy/count/down2')
	precacheImage('antipathy/count/down3')
	
	--close(true) --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
function onUpdate()
	if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
		else
			triggerEvent('Camera Follow Pos','','')
		end
end

function onEvent(name,value1,value2)
	if name == 'Trigger BG Ghouls' then
		hey = tonumber(value1)
		
		if hey == 0 then
			followchars = true
		elseif hey == 1 then
			followchars = false
			triggerEvent('Camera Follow Pos',1368,917)
		end
	end
end
function onCreate()
	makeLuaSprite('patasskyerect', 'antipathy/bluesand/patasskyerect', -530, -400);
	
	addLuaSprite('patasskyerect', false);
	makeLuaSprite('patasbuildingserect', 'antipathy/bluesand/patasbuildingserect', -530, -400);
	
	addLuaSprite('patasbuildingserect', false);
	makeLuaSprite('patasgroundstoneserect', 'antipathy/bluesand/patasgroundstoneserect', -530, -400);
	
	addLuaSprite('patasgroundstoneserect', false);
	makeLuaSprite('patasgrounderect', 'antipathy/bluesand/patasgrounderect', -530, -400);
	
	addLuaSprite('patasgrounderect', false);
	makeLuaSprite('patasrocksforeerect', 'antipathy/bluesand/patasrocksforeerect', -530, -400);
	
	addLuaSprite('patasrocksforeerect', false);
end
	-- background shit
