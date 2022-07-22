local Nps = 0

local NoteHit = false;

function onStepHit()

    if NoteHit == true then

        Nps = Nps - 2 * 4 -- math is funny

    end

end

function onCreatePost()

 makeLuaText('nps','',0,20,590) -- x y values go on the second and third 0's

 setTextSize('nps', 20)

 addLuaText('nps')

end

 function onUpdate()

 if hits < 1 and misses < 1 then

 setTextString('nps','NPS: 0')

else

 setTextString('nps','NPS: '..Nps)

end

  if Nps < 0 then

        Nps = 0

        NoteHit = false;

    end

end

 function goodNoteHit(id, direction, noteType, isSustainNote)

    if not isSustainNote then

        Nps = Nps + 1

        NoteHit = false;

    end

    ezTimer('drain', 1, function()

        NoteHit = true;

    end)

end

timers = {}

function ezTimer(tag, timer, callback) -- Better

    table.insert(timers,{tag, callback})

    runTimer(tag, timer)

end

function onTimerCompleted(tag)

    for k,v in pairs(timers) do

        if v[1] == tag then

            v[2]()

        end

    end

end