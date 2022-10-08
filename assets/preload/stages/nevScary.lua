local xx = 604.50
local yy = 550
local xx2 = 1068.82
local yy2 = 550
local ofs = 30
local followchars = false
local ooSpooky = true

function onStartSong()
	setPropertyFromClass('flixel.FlxG','sound.music.volume',1)
end


function onCreate()
	setPropertyFromClass('flixel.FlxG','sound.music.volume',0)
	
	makeLuaSprite('blackfuck', 'antipathy/black', 0, 0)
	setObjectCamera('blackfuck', 'hud')
	setGraphicSize('blackfuck', screenWidth, screenHeight)
	setScrollFactor('blackfuck', 0, 0)
	setProperty('blackfuck.alpha', 1)
	setProperty('defaultCamZoom',2.0)
end

function onCreatePost()
	addLuaSprite('blackfuck', true)
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
	
	if ooSpooky == true then
		triggerEvent('Camera Follow Pos',1000,400)
	end
end

function onEvent(n,v1,v2)
	if n == 'Trigger BG Ghouls' then --remove da blackshit
		alpha = tonumber(v1)
		speed = tonumber(v2)
		doTweenAlpha('bruh','blackfuck',alpha,speed,'linear')
	end
	if n == 'BG Freaks Expression' then --zoom in??
		stupid = tonumber(v1)
		if stupid == 0 then
			ooSpooky = false
			followchars = true
		elseif stupid == 1 then
			ooSpooky = true
			followchars = false
		end
	end
	if n == 'Kill Henchmen' then --zoom early?
		nyoom = tonumber(v1)
		if nyoom == 1 then
			xx = 1068.82
			yy = 550
		elseif nyoom == 0 then
			xx = 604.50
			yy = 550
		end
	end
end

function opponentNoteHit() --lawd he angry now

triggerEvent('Screen Shake','0.02,0.006')

end