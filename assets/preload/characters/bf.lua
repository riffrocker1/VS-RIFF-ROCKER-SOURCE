function onCreate()
	if boyfriendName == 'bf' then
		makeAnimatedLuaSprite('animatedbficon', 'icons/anim/bf', getProperty('iconP1.x'), getProperty('iconP1.y'))
		addAnimationByPrefix('animatedbficon', 'normal', 'BF ICON 2 fix',24, true)
		addAnimationByPrefix('animatedbficon', 'losing', 'BF ICON 2 ded', 24, true)
        addAnimationByPrefix('animatedbficon', 'winning', 'BF ICON 2 winning', 24, true)
		setScrollFactor('animatedbficon', 0, 0)
		setObjectCamera('animatedbficon', 'other') -- either is under the health bar or nothing
		addLuaSprite('animatedbficon', false)
                setObjectOrder('animatedbficon', 99)
		objectPlayAnimation('animatedbficon', 'normal', false)
	end
end
function onUpdate(elapsed)
	if boyfriendName == 'bf' then
		setProperty('iconP1.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedbficon', 'winning', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedbficon', 'losing', false)
		else
			objectPlayAnimation('animatedbficon', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedbficon.x', getProperty('iconP1.x'))
	setProperty('animatedbficon.angle', getProperty('iconP1.angle'))
	setProperty('animatedbficon.y', getProperty('iconP1.y') + 30)
	setProperty('animatedbficon.scale.x', getProperty('iconP1.scale.x'))
	setProperty('animatedbficon.scale.y', getProperty('iconP1.scale.y'))
end
