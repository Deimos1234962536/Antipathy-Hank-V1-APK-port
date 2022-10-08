function onStepHit() -- subtitles with lua
	if subsEnabled then
		if curStep == 172 then
			if not familyFriendly then
			triggerEvent('karaokelyrics','set','THE FUCK WAS THAT FOR?!?');
			else
			triggerEvent('karaokelyrics','set','THE fork WAS THAT FOR?!?');
			end
		end
		if curStep == 191 then
			triggerEvent('karaokelyrics','set','I\'m not here to play games, clown!');
		end
		if curStep == 215 then
			triggerEvent('karaokelyrics','set','BUT THE GAMES HAVE JUST');
		end
		if curStep == 231 then
			triggerEvent('karaokelyrics','set','BUT THE GAMES HAVE JUST BEGUN!');
			triggerEvent('karaokelyrics','sung','BUT THE GAMES HAVE JUST BEGUN!');
		end
		if curStep == 255 then
			triggerEvent('karaokelyrics','set','');
		end
		if curStep == 371 then
			triggerEvent('karaokelyrics','set','CHOO!');
		end
		if curStep == 375 then
			triggerEvent('karaokelyrics','set','CHOO! CHOO!');
		end
		if curStep == 383 then
			triggerEvent('karaokelyrics','set','');
		end
		if curStep == 1258 then
			triggerEvent('karaokelyrics','set','DID I SAY YOU COULD');
		end
		if curStep == 1271 then
			if not familyFriendly then
			triggerEvent('karaokelyrics','set','DID I SAY YOU COULD DIE?');
			triggerEvent('karaokelyrics','sung','DID I SAY YOU COULD DIE?');
			else
			triggerEvent('karaokelyrics','set','DID I SAY YOU COULD demonitize?');
			triggerEvent('karaokelyrics','sung','DID I SAY YOU COULD demonitize?');
			end
		end
		if curStep == 1280 then
			triggerEvent('karaokelyrics','set','');
		end
		if curStep == 1649 then
			triggerEvent('karaokelyrics','set','GET UP');
			triggerEvent('karaokelyrics','sung','GET UP');
		end
		if curStep == 1676 then
			if not familyFriendly then
			triggerEvent('karaokelyrics','set','YOU SON OF A BITCH!-');
			triggerEvent('karaokelyrics','sung','YOU SON OF A BITCH!-');
			else
			triggerEvent('karaokelyrics','set','YOU SON OF A birch!-');
			triggerEvent('karaokelyrics','sung','YOU SON OF A birch!-');
			end
		end
		if curStep == 1702 then
			if not familyFriendly then
			triggerEvent('karaokelyrics','set','-YOU SON OF A BITCH!!');
			triggerEvent('karaokelyrics','sung','-YOU SON OF A BITCH!!');
			else
			triggerEvent('karaokelyrics','set','-YOU SON OF A [redacted]!!');
			triggerEvent('karaokelyrics','sung','-YOU SON OF A [redacted]!!');
			end
		end
		if curStep == 1715 then
			triggerEvent('karaokelyrics','set','');
		end
	end
end