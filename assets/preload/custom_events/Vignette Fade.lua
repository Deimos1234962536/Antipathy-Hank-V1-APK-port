-- Took this from Mind Games!! mod, which you should play
-- Thanks Shadow Mario!
function onCreate()
	makeLuaSprite('madVignette', 'antipathy/madvignette', 0, 0);
	setObjectCamera('madVignette', 'hud');
	setGraphicSize('madVignette', screenWidth, screenHeight);
	setScrollFactor('madVignette', 0, 0);
	addLuaSprite('madVignette', false);
	setProperty('madVignette.alpha', 0.00001);
end

function onEvent(name, value1, value2)
	if name == "Vignette Fade" then
		duration = tonumber(value1)
		targetAlpha = tonumber(value2)
		if flashingLights then
			if duration <= 0 then
				setProperty('madVignette.alpha', targetAlpha);
				if cameraZoomOnBeat then
					setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.07);
				end
			else
				doTweenAlpha('madvigtween', 'madVignette', targetAlpha, duration, 'quadInOut');
			end
		end
	end
end