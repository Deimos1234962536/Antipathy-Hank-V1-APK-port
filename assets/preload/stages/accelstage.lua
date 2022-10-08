local xx = 836.49
local yy = 927.50
local xx2 = 1219.47
local yy2 = 927.50
local ofs = 50
local followchars = true

function onCreate()
	--PRELOAD DA SPRITE
	precacheImage('antipathy/accelpathy/TRICKARRIVE')
	precacheImage('antipathy/accelpathy/tricky_yeeted')
	
	-- background shit
	makeLuaSprite('sky', 'antipathy/accelpathy/accelepathysky', -400, -150)
	setScrollFactor('sky', 0.3, 0.3)
	makeLuaSprite('mts', 'antipathy/accelpathy/accelepathymountains', -400, 100)
	scaleObject('mts', 1.0, 1.0)
	makeLuaSprite('floor', 'antipathy/accelpathy/accelepathyground', -400, 100)
	scaleObject('floor', 1.0, 1.0)
	
	makeAnimatedLuaSprite('heyAll','antipathy/accelpathy/TRICKARRIVE',-65,30)
	addAnimationByPrefix('heyAll','clownhere','Conductric Arrive',24,false)
	
	makeAnimatedLuaSprite('buhbye','antipathy/accelpathy/tricky_yeeted',-1200,-700)
	addAnimationByIndices('buhbye','yeet','Trickt yeeted','0,1,2,3,4',24)

	addLuaSprite('sky', false)
	addLuaSprite('mts', false)
	addLuaSprite('floor', false)
	
	addCharacterToList('hankmad', 'dad')
	addCharacterToList('tricky', 'dad')
	addCharacterToList('hank-hit', 'dad')
	
	--close(true) --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onUpdate()
	if getProperty('heyAll.animation.curAnim.finished') then
		removeLuaSprite('heyAll', true)
		triggerEvent('Second Player Join',1,'')
	end
	
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
		addLuaSprite('heyAll', true)
		objectPlayAnimation('heyAll','clownhere',false)
	end
	if name == 'Batter Up' then
		triggerEvent('Change Character', 'dad', 'hank-hit')
		runTimer('numbnuts', 1.5)
		runTimer('sploink', 1.9)
	end
end

function onTimerCompleted(t,l,ll)

	if t == 'numbnuts' then
		setProperty('dadtoo.alpha', 0)
		addLuaSprite('buhbye', true)
		objectPlayAnimation('buhbye','yeet',false)
		setProperty('buhbye.specialAnim', false)
	end
	if t == 'sploink' then
		setProperty('buhbye.alpha', 0)
	end
end