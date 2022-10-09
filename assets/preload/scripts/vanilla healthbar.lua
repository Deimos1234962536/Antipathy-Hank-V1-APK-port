function onCreatePost()
	setProperty('scoreTxt.x', getProperty('healthBar.x') * 0.6)
end


function onRecalculateRating()
	setProperty('scoreTxt.text', 'Score:'..getProperty('songScore'))
end
