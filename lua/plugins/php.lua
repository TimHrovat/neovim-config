return {
    {
        -- Add neotest-pest plugin for running PHP tests.
        -- A package is also available for PHPUnit if needed.
        "nvim-neotest/neotest",
        dependencies = { "olimorris/neotest-phpunit" },
        opts = { adapters = { "neotest-phpunit" } },
    },
}
