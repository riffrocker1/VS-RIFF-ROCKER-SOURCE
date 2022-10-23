function onCreate()
	makeAnimatedLuaSprite('uglyHB','glitched_healtbar',0,0)addAnimationByPrefix('uglyHB','dance','bar instancia ',25,true)
        objectPlayAnimation('uglyHB','dance',true)
	setObjectCamera('uglyHB', 'hud')
	setScrollFactor('uglyHB', 0.9, 0.9)
	
	makeLuaSprite('riffHB', 'healthBar/healthbar', 0, 0);
	setObjectCamera('riffHB', 'hud')
	setScrollFactor('riffHB', 0.9, 0.9)
	
	makeLuaSprite('riffHB-Border', 'healthBar/healthbarBorder', 0, 0);
	setObjectCamera('riffHB-Border', 'hud')
	setScrollFactor('riffHB-Border', 0.9, 0.9)
	
  addLuaSprite('riffHB', true)
  addLuaSprite('riffHB-Border', true)
end

function onCreatePost()
	--Healthbar cool right? c:
    setProperty('riffHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))

    setProperty('riffHB.x', getProperty('healthBar.x') - 20)

    setProperty('riffHB.angle', getProperty('healthBar.angle'))
    setProperty('riffHB.y', getProperty('healthBar.y')  - 38)
    setProperty('riffHB.scale.x', getProperty('healthBar.scale.x'))
    setProperty('riffHB.scale.y', getProperty('healthBar.scale.y'))
	
	-- i cant forget the border lol
	
	setProperty('riffHB-Border.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarBG'))

    setProperty('riffHB-Border.x', getProperty('healthBarBG.x') - 20)

    setProperty('riffHB-Border.angle', getProperty('healthBarBG.angle'))
    setProperty('riffHB-Border.y', getProperty('healthBarBG.y')  - 38)
    setProperty('riffHB-Border.scale.x', getProperty('healthBarBG.scale.x'))
    setProperty('riffHB-Border.scale.y', getProperty('healthBarBG.scale.y'))
	
    setObjectOrder('riffHB', 4)
	setObjectOrder('riffHB-Border', 2)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)
end

-- hi there, cool right? 