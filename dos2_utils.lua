-- Copyright (C) 2026 Tuomo Kriikkula
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.

-- Divinity Original Sin 2 Lua utilities.
-- Usable with Norbyte's Script Extender Lua console.

-- Dump inventory items.
local c = _C()
for _, guid in pairs(_C().GetInventoryItems(c)) do
    local item = Ext.GetItem(guid)
    print(item.DisplayName, "\t", item.RootTemplate.Id, "\t", guid)
end
-- One-liner:
local c = _C(); for _, guid in pairs(_C().GetInventoryItems(c)) do local item = Ext.GetItem(guid); print(item.DisplayName, "\t", item.RootTemplate.Id, "\t", guid); end


-- Give item.
ItemTemplateAddTo("ITEM TEMPLATE UUID", CharacterGetHostCharacter(), 1, 1)


-- Item template UUIDs.
-- Deathfog Barrel      e0e9effc-8e74-43ea-b9a5-8e2050cccbde
-- Ooze Barrel          0ae0668f-418c-46c4-bcbb-1683aa3c68e3
