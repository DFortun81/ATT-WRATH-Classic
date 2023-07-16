-- App locals
local appName, app = ...;

-- Implementation
app:GetWindow("NeverImplemented", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self)
		SLASH_ATTNYI1 = "/attnyi";
		SlashCmdList["ATTNYI"] = function(cmd)
			self:Toggle();
		end
	end,
	OnLoad = function(self, settings)
		local g = app.Categories.NeverImplemented;
		if g then
			app.Categories.NeverImplemented = nil;
			local nyiData = app.CacheFields({
				text = "Never Implemented",
				icon = app.asset("Interface_Tchest"),
				hideText = true,
				indent = 2,
				g = g,
			});
			app.AssignFieldValue(nyiData, "u", 1);
			self.nyiData = nyiData;
		end
	end,
	OnRebuild = function(self)
		if not self.data then
			local nyiData = self.nyiData;
			if nyiData then
				self.data = nyiData;
				return true;
			end
		end
	end,
});