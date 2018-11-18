
alive = TRUE

everything = :vinyl_scratch
can_wait = 4

call_me =
  [:g,  :a,  :b]

tick_tock =
  [:d, :a, :r, :e]

now =
  [:f,   :a,   :d,   :e]

live_loop :watches do
  sleep 1
end

live_loop :breathing do
  sample :vinyl_hiss
  sleep 8
end

live_loop :heartbeats do
  if alive then
    sample :drum_bass_soft
    sleep 1
    sample :drum_bass_soft
    sleep 0.25
    sample :drum_bass_soft
    sleep 0.75
  else
    stop
  end
end

now.ring
call_me.ring

live_loop :this_is_it do
  sync :watches
  sync :breathing
  sync :heartbeats
  tick_tock.tick
  cue :the_music
  sample everything
  sleep can_wait
end









##|

##| Make-your.choice

##| what_makes_you.tick

##| Tick-tock.tick
##| Roman.tick
##| Chao.tick
##| Synthe.tick

##| Now.look

##| Sound_in




##| puts “up with this”

##| sync :hronise_your_breathing

##| sync :hronise_your_watches

##| sync :hronise_your_heartbeat

##| Tick_tock =(:caged)
##| Now = (:f,:a,:d,:e)

##| :cue “the music”

##| call-me = Ring now
