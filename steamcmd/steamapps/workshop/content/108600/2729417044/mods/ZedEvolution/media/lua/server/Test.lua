local function checkAttackingZombieStats (zomberd)
  if zomberd:isCurrentState(AttackState.instance()) then
    print('AttackOutcome', zomberd:getVariableString('AttackOutcome'))
  end
  --if zomberd:getModData()['attacking'] then
    --print('actioncontext state', zomberd:getActionContext():getCurrentState():getName())
    --print('hittime', zomberd:getHitTime())
    --print('realstate', zomberd:getRealState())
    --print('AttackOutcome', zomberd:getVariableString('AttackOutcome'))
  --end
end


Events.OnAIStateChange.Add(function (chr, newState, oldState)
  --if newState and oldState then
  --  print('OnAIStateChange', chr, newState:getName(), newState:getName())
  --end
  --if instanceof(chr, 'IsoZombie') and newState == AttackState.instance() then
  --  print('Zombie attacked')
  --  chr:getModData()['attacking'] = true
  --end
  --if instanceof(chr, 'IsoZombie') and oldState == AttackState.instance() then
  --  print('Zombie finished attack')
  --  chr:getModData()['attacking'] = false
  --end
end)

--Events.OnZombieUpdate.Add(checkAttackingZombieStats)


--Events.OnPlayerUpdate.Add(function (pl) print(pl:getVariableString("PlayerHitReaction")) end)