local i = 0
local xx = 908.78
local yy = 762.40
local xx2 = 1357.77
local yy2 = 700.44
local ofs = 50
local followchars = true
local hankdown = false
local width = 0

function onUpdate(elapsed)
i = i + 1
	
	if followchars == true then
        if mustHitSection == false then
			if hankdown == false then
				setProperty('defaultCamZoom',0.4)
			else
				setProperty('defaultCamZoom',1.2)
			end
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
			setProperty('defaultCamZoom',0.6)
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
	
	if name  == 'Brain Damage' then --owch
		setProperty('health', 0.0182)
		hankdown = true
	end
	
	if name  == 'Vignette Fade' then --ok get up nerd
		hankdown = false
	end
end
sprite = 'trainback'
size = 2048
startX = -1330
startY = 300
duration = 0.3


function onCreate()

	-- background shit
	makeLuaSprite('trainsky', 'trainsky', -1330, -400);
	
	addLuaSprite('trainsky', false);


makeLuaSprite(sprite .. '1', sprite, startX, startY)
addLuaSprite(sprite .. '1', false)
makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
addLuaSprite(sprite .. '2', false)
scrollA()
end


function scrollA()
doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
doTweenX(sprite .. '2move',sprite .. '2', startX, duration)
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end
end
function scrollB()
doTweenX(sprite .. '2move1',sprite .. '2', startX, 0.001)
doTweenX(sprite .. '1move1',sprite .. '1', startX + size, 0.001)
	-- background shit
	makeLuaSprite('trainfront', 'trainfront', -1330, 300);
	
	addLuaSprite('trainfront', false);
end
