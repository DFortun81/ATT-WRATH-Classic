do
local appName, app = ...;
app:GetWindow("Breadcrumbs", {
	parent = UIParent,
	Silent = true,
	OnInit = function(self)
		SLASH_ATTBREADCRUMBS1 = "/attbreadcrumbs";
		SlashCmdList["ATTBREADCRUMBS"] = function(cmd)
			self:Toggle();
		end
	end,
	OnRebuild = function(self, ...)
		if not self.data then
			self.data = {
				text = "Follow the Breadcrumbs",
				icon = "Interface\\Icons\\INV_Misc_Food_12", 
				description = "This window shows you all of the breadcrumbs tracked by ATT. Go get 'em!",
				visible = true, 
				expanded = true,
				back = 1,
				indent = 0,
				g = { },
				OnUpdate = function(data)
					local g = data.g;
					if #g < 1 then
						local results = app:BuildSearchResponseForField(app:GetDataCache().g, "isBreadcrumb");
						if #results > 0 then
							for i,result in ipairs(results) do
								table.insert(g, result);
							end
						end
					end
				end,
			}
		end
	end
});
end