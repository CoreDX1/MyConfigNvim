local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
    ["null-ls"] = {
        runtime_condition = function(params)
            return true
        end,
        timeout = 5000,
    }
}
