function onStepHit() -- subtitles with lua
	if subsEnabled then
		if curStep == 1520 then
			triggerEvent('karaokelyrics','set','HAHA.');
		end
		if curStep == 1527 then
			if not familyFriendly then
			triggerEvent('karaokelyrics','set','HAHA. BITCH.');
			triggerEvent('karaokelyrics','sung','HAHA. BITCH.');
			else
			triggerEvent('karaokelyrics','set','HAHA. bridge');
			triggerEvent('karaokelyrics','sung','HAHA. bridge');
			end
		end
		if curStep == 1537 then
			triggerEvent('karaokelyrics','set',' ');
		end
	end
end