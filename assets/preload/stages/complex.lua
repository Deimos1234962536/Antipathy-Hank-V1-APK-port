local xx = 365.00
local yy = 879.49
local xx2 = 1069
local yy2 = 879.49
local ofs = 50
local followchars = true

function onCreate()
	precacheImage('antipathy/count/down0')
	precacheImage('antipathy/count/down1')
	precacheImage('antipathy/count/down2')
	precacheImage('antipathy/count/down3')
	-- background shit
	makeLuaSprite('sky', 'antipathy/bloodrage/redskies', -600, -200)
	setScrollFactor('sky', 0.7, 0.7)
	scaleObject('sky', 1.7, 1.7)
	
	makeLuaSprite('floor', 'antipathy/bloodrage/complextop', -600, -200)
	scaleObject('floor', 1.7, 1.7)
	
	makeLuaSprite('fog', 'antipathy/hankbgfog', -600, -200)
	scaleObject('fog', 1.7, 1.7)

	addLuaSprite('sky', false)
	addLuaSprite('floor', false)
	addLuaSprite('fog', true)
	
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