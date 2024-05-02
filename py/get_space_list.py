async def get_space_lists(self, space_id):
        lists = []
        task_ids = []

        clickup_folders = await self.get_folders(space_id)
        if clickup_folders.get("folders"):
            folder_ids = [folder["id"] for folder in clickup_folders["folders"]]
        else:
            return []

        for folder_id in folder_ids:
            clickup_list = await self.get_list(folder_id)
            if clickup_list.get("lists"):
                lists.extend([list for list in clickup_list["lists"]])

        return lists
