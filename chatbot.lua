local Players = game:GetService("Players")

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
    game:GetService("Chat"):Chat(player.Character, response, Enum.ChatColor.Red)
end

-- Connect the Chatted event for each player that joins
Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        onPlayerChat(player, message)
    end)
end)
