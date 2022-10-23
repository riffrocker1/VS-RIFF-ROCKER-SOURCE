function onCreate()
	makeAnimatedLuaSprite('uglyHB','glitched_healtbar',0,0)addAnimationByPrefix('uglyHB','dance','bar instancia ',25,true)
        objectPlayAnimation('uglyHB','dance',true)
	setObjectCamera('uglyHB', 'hud')
	setScrollFactor('uglyHB', 0.9, 0.9)
	
	makeLuaSprite('riffHB', 'healthBar/week3/healthbarBorder', 0, 20);
	setObjectCamera('riffHB', 'hud')
	setScrollFactor('riffHB', 0.9, 0.9)
	
	makeLuaSprite('riffHB-Border', 'healthBar/healthbarBorder', 0, 10);
	setObjectCamera('riffHB-Border', 'hud')
	setScrollFactor('riffHB-Border', 0.9, 0.9)
	
--  addLuaSprite('riffHB', true)
    addLuaSprite('riffHB-Border', true)
end

function onCreatePost()
	--Healthbar cool right? c:
    setProperty('riffHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))

    setProperty('riffHB.x', getProperty('healthBar.x') - 20)

    setProperty('riffHB.angle', getProperty('healthBar.angle'))
    setProperty('riffHB.y', getProperty('healthBar.y')- 15)
    setProperty('riffHB.scale.x', getProperty('healthBar.scale.x'))
    setProperty('riffHB.scale.y', getProperty('healthBar.scale.y') - 0.2)
	
	-- i cant forget the border lol
	
	setProperty('riffHB-Border.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarBG'))

    setProperty('riffHB-Border.x', getProperty('healthBarBG.x') - 30)

    setProperty('riffHB-Border.angle', getProperty('healthBarBG.angle'))
    setProperty('riffHB-Border.y', getProperty('healthBarBG.y')  - 35)
    setProperty('riffHB-Border.scale.x', getProperty('healthBarBG.scale.x'))
    setProperty('riffHB-Border.scale.y', getProperty('healthBarBG.scale.y'))
	
    setObjectOrder('riffHB', 1)
-- setObjectOrder('riffHB-Border', 4)
	setObjectOrder('healthBar', 3)
	setObjectOrder('healthBarBG', 2)
end

-- hi there, cool right? 