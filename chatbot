-- Chatbot responses
local chatbotResponses = {
    ["hello"] = "Hi there! How can I help you today?",
    ["how are you"] = "I'm doing great, thank you for asking! How about you?",
    ["what is your name"] = "I'm your friendly Roblox chatbot!",
    ["bye"] = "Goodbye! Have a great day!",
}

-- Function to handle player chat messages
local function onPlayerChat(player, message)
    -- Normalize the message to lowercase for easy matching
    local messageLower = message:lower()
    
    -- Find the response based on the player's message
    local response = chatbotResponses[messageLower] or "Sorry, I don't understand that. Try asking something else."
    
    -- Send the response back to the client
    return response
end

-- Return the function so it can be used elsewhere (like in Roblox game)
return onPlayerChat
