local angleshit = -1

function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Attack Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/ATTACKNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 0);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let BF's notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
	makeLuaSprite('madVignette', 'antipathy/madvignette', 0, 0);
	setObjectCamera('madVignette', 'hud');
	setGraphicSize('madVignette', screenWidth, screenHeight);
	setScrollFactor('madVignette', 0, 0);
	addLuaSprite('madVignette', false);
	setProperty('madVignette.alpha', 0.0);
	addLuaSprite('madVignette', false);
end

local funny = math.random(2);
tostring(funny);
local ataque = 'attack' .. funny;

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Attack Note' then
		if shaking then
			cameraShake('camGame', 0.05, 0.2);
		end
		funny = math.random(1,2);
		tostring(funny);
		ataque = 'attack' .. funny;
		setProperty('health', getProperty('health')+0.2);
		runTimer('fuck',0.02);
		characterPlayAnim('boyfriend', ataque, true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('iconP1.angle',angleshit*35);
		setProperty('iconP2.angle',angleshit*35);
		setProperty('animatedicon.angle',angleshit*-35);
		doTweenAngle('hr', 'iconP1', 0, 0.8, 'circOut');
		doTweenAngle('hrr', 'iconP2', 0, 0.8, 'circOut');
		doTweenAngle('hrrr', 'animatedicon', 0, 0.8, 'circOut');
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Attack Note' then
		if shaking then
			cameraShake('camGame', 0.07, 0.2);
		end
		if flashingLights then
			setProperty('madVignette.alpha', 1.0);
			doTweenAlpha('madvigtween', 'madVignette', 0, 1.5, 'quadInOut');		
		end
		if gimmicks then
			setProperty('health', getProperty('health')-0.3);
		end
		funny = math.random(1,2);
		tostring(funny);
		ataque = 'attack' .. funny;
		characterPlayAnim('dad', ataque, true);
		setProperty('dad.specialAnim', true);
		runTimer('shit',0.02);
		setProperty('iconP1.angle',angleshit*-35);
		setProperty('iconP2.angle',angleshit*-35);
		setProperty('animatedicon.angle',angleshit*35);
		doTweenAngle('hr', 'iconP1', 0, 0.8, 'circOut');
		doTweenAngle('hrr', 'iconP2', 0, 0.8, 'circOut');
		doTweenAngle('hrrr', 'animatedicon', 0, 0.8, 'circOut');
	end
end

function onTimerCompleted(t,l,ll)

	if t == 'fuck' then
		characterPlayAnim('dad', 'block', true);
		setProperty('dad.specialAnim', true);
	end
	
	if t == 'shit' then
		characterPlayAnim('boyfriend', 'hurt', true);
	end

end