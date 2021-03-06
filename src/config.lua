local config = require("lapis.config")

config({"development", "production"}, {
    secret = "change me",
    port = 25516,
    postgres = {
        backend = "pgmoon",
        host = "127.0.0.1",
        user = "foo",
        password = "bar",
        database = "foodb",
    },
    hash_secret1 = 'hash_secret1',
    hash_secret2 = 'hash_secret2',
    password_secret1 = 'password_secret1',
    password_secret2 = 'password_secret2',
    nwords = {
        short = 3,
        long = 9,
        password = 9,
        salt = 9,
    },
    max_pasta_size = 10 * 1024^2,
    max_filename = 150,
    highlight_js_path = '/static/highlight.js/9.1.0/',
})

config("production", {
    code_cache = 'on',
    logging = {queries = false, requests = false},
    print_stack_to_browser = false,
    pastas_cache = {
        nrecords = 1000,
        nbytes = 100000000,
    },
})

config("development", {
    print_stack_to_browser = true,
})
