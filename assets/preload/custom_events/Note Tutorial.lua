function onCreate()
	makeLuaSprite('toot', 'antipathy/train/notetutorial', 0, 0)
	setObjectCamera('toot', 'hud')
	setScrollFactor('toot', 0, 0)
	setProperty('toot.alpha', 0)
	addLuaSprite('toot', true)
	setProperty('toot.alpha', 0.000001)
end

function onEvent(name, value1, value2)
	if name == "Note Tutorial" then
		alpha = tonumber(value1)
		speed = tonumber(value2)

		doTweenAlpha('ech','toot',alpha,speed,'quadInOut')
	end
end