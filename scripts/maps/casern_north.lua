--[[

  Inside the casern.

  Copyright (C) 2012 Jessica Tölke

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

atinit(function()
    require "scripts/functions/npchelper"
    parse_npcs_from_map()

    require "scripts/functions/guardpatrol"

    require "scripts/npcs/casern_north/chefodo"
    require "scripts/npcs/casern_north/guardhamond"
    require "scripts/npcs/casern_north/recruitalan"
    require "scripts/npcs/casern_north/recruitjordan"
    require "scripts/npcs/casern_north/scullionjohn"

end)

