--[[

  Script that can be called from other monster scripts which shares the
  anger between the monsters.

  Copyright (C) 2012 Erik Schilling

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

--]]

module("group_monster", package.seeall)

-- Calling this function will make all monsters of same id attack the aggressor
function damage_recieved(mob, aggressor, hploss)
    local beings = get_beings_in_circle(mob, 10 * TILESIZE)
    local id = monster_get_id(mob)
    for _, being in ipairs(beings) do
        if (being_type(being) == TYPE_MONSTER and monster_get_id(being) == id) then
            monster_change_anger(being, aggressor, hploss)
        end
    end
end
