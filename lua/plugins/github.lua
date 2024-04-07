-- ------------------------------------------
-- GitHub related plugins
--
-- Octo manages issues and pull requests from Neovim
-- Requires GitHub CLI install
-- https://practical.li/neovim/source-control/octo/
-- ------------------------------------------

-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

local octo_leader = "<leader>gh"

---@type LazySpec
return {

  -- Octo for GitHub Issues & Pull Request
  {
    "pwntester/octo.nvim",
    opts = {
      -- add common aliases for remotes used by Practicalli
      default_remote = { "practicalli", "practicalli-johnny", "upstream", "origin" },
    },
    keys = {
      { octo_leader, desc = " GitHub" }, -- Neogit menu also defined in mappings.lua
      { octo_leader .. "c", desc = "Comments" },
      { octo_leader .. "ca", "<cmd>Octo comment add<CR>", desc = "Add a new comment" },
      { octo_leader .. "cd", "<cmd>Octo comment delete<CR>", desc = "Delete a comment" },
      { octo_leader .. "t", desc = "Threads" },
      { octo_leader .. "ta", "<cmd>Octo thread resolve<CR>", desc = "Mark thread as resolved" },
      { octo_leader .. "td", "<cmd>Octo thread unresolve<CR>", desc = "Mark thread as unresolved" },
      { octo_leader .. "i", desc = "Issues" },
      { octo_leader .. "ic", "<cmd>Octo issue close<CR>", desc = "Close current issue" },
      { octo_leader .. "ir", "<cmd>Octo issue reopen<CR>", desc = "Reopen current issue" },
      { octo_leader .. "il", "<cmd>Octo issue list<CR>", desc = "List open issues" },
      { octo_leader .. "iu", "<cmd>Octo issue url<CR>", desc = "Copies URL of current issue" },
      { octo_leader .. "io", "<cmd>Octo issue browser<CR>", desc = "Open current issue in browser" },
      { octo_leader .. "p", desc = "Pull requests" },
      { octo_leader .. "pp", "<cmd>Octo pr checkout<CR>", desc = "Checkout PR" },
      { octo_leader .. "pm", desc = "Merge current PR" },
      { octo_leader .. "pmm", "<cmd>Octo pr merge commit<CR>", desc = "Merge commit PR" },
      { octo_leader .. "pms", "<cmd>Octo pr merge squash<CR>", desc = "Squash merge PR" },
      { octo_leader .. "pmd", "<cmd>Octo pr merge delete<CR>", desc = "Delete merge PR" },
      { octo_leader .. "pmr", "<cmd>Octo pr merge rebase<CR>", desc = "Rebase merge PR" },
      { octo_leader .. "pc", "<cmd>Octo pr close<CR>", desc = "Close current PR" },
      { octo_leader .. "pn", "<cmd>Octo pr create<CR>", desc = "Create PR for current branch" },
      { octo_leader .. "pd", "<cmd>Octo pr diff<CR>", desc = "Show PR diff" },
      { octo_leader .. "ps", "<cmd>Octo pr list<CR>", desc = "List open PRs" },
      { octo_leader .. "pr", "<cmd>Octo pr ready<CR>", desc = "Mark draft as ready for review" },
      { octo_leader .. "po", "<cmd>Octo pr browser<CR>", desc = "Open current PR in browser" },
      { octo_leader .. "pu", "<cmd>Octo pr url<CR>", desc = "Copies URL of current PR" },
      { octo_leader .. "pt", "<cmd>Octo pr commits<CR>", desc = "List PR commits" },
      { octo_leader .. "pl", "<cmd>Octo pr commits<CR>", desc = "List changed files in PR" },
      { octo_leader .. "r", desc = "Repo" },
      { octo_leader .. "rl", "<cmd>Octo repo list<CR>", desc = "List repo user stats" },
      { octo_leader .. "rf", "<cmd>Octo repo fork<CR>", desc = "Fork repo" },
      { octo_leader .. "ro", "<cmd>Octo repo open<CR>", desc = "Open current repo in browser" },
      { octo_leader .. "ru", "<cmd>Octo repo url<CR>", desc = "Copies URL of current repo" },
      { octo_leader .. "a", desc = "Assignee/Reviewer" },
      { octo_leader .. "aa", "<cmd> Octo assignee add<CR>", desc = "Assign a user" },
      { octo_leader .. "ar", "<cmd> Octo assignee remove<CR>", desc = "Remove a user" },
      { octo_leader .. "ap", "<cmd> Octo reviewer add<CR>", desc = "Assign a PR reviewer" },
      { octo_leader .. "l", desc = "Label" },
      { octo_leader .. "la", "<cmd> Octo label add<CR>", desc = "Assign a label" },
      { octo_leader .. "lr", "<cmd> Octo label remove<CR>", desc = "Remove a label" },
      { octo_leader .. "lc", "<cmd> Octo label create<CR>", desc = "Create a label" },
      { octo_leader .. "e", desc = "Reactions" },
      { octo_leader .. "e1", "<cmd>Octo reaction thumbs_up<CR>", desc = "Add 👍 reaction" },
      { octo_leader .. "e2", "<cmd>Octo reaction thumbs_down<CR>", desc = "Add 👎 reaction" },
      { octo_leader .. "e3", "<cmd>Octo reaction eyes<CR>", desc = "Add 👀 reaction" },
      { octo_leader .. "e4", "<cmd>Octo reaction laugh<CR>", desc = "Add 😄 reaction" },
      { octo_leader .. "e5", "<cmd>Octo reaction confused<CR>", desc = "Add 😕 reaction" },
      { octo_leader .. "e6", "<cmd>Octo reaction rocket<CR>", desc = "Add 🚀 reaction" },
      { octo_leader .. "e7", "<cmd>Octo reaction heart<CR>", desc = "Add ❤️ reaction" },
      { octo_leader .. "e8", "<cmd>Octo reaction party<CR>", desc = "Add 🎉 reaction" },
      { octo_leader .. "x", "<cmd>Octo actions<CR>", desc = "Run an action" },
      { octo_leader .. "s", desc = "Review" },
      { octo_leader .. "ss", "<cmd> Octo review start<CR>", desc = "Start review" },
      { octo_leader .. "sf", "<cmd> Octo review submit<CR>", desc = "Submit review" },
      { octo_leader .. "sr", "<cmd> Octo review resume<CR>", desc = "Submit resume" },
      { octo_leader .. "sd", "<cmd> Octo review discard<CR>", desc = "Delete pending review" },
      { octo_leader .. "sc", "<cmd> Octo review comments<CR>", desc = "View pending comments" },
      { octo_leader .. "sp", "<cmd> Octo review commit<CR>", desc = "Select commit to review" },
      { octo_leader .. "sc", "<cmd> Octo review close<CR>", desc = "Return to PR" },
    },
  },
}
