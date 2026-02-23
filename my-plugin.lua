function handle_request(req, res)
    local url = req.url

    if url == "/plugins/my-plugin/secret" then
        res:setStatus(403)
        res:send("Access Denied to Secret Area")
    else
        local responseData = {
            message = "Hello from the Sandbox!",
            path = url,
            status = "safe",
            hello = {
                world = "pew",
            }
        }
        res:json(responseData)
    end
end
