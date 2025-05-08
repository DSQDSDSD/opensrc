-- Exemple d'un script simple d'autoclicker

local inputService = game:GetService("UserInputService")
local clickingEnabled = false

-- Fonction pour démarrer l'autoclick
local function startClicking()
    while clickingEnabled do
        -- Simuler un clic ici, par exemple un événement ou une action dans le jeu
        print("Clique!") -- Remplacez cela par votre logique de clic
        wait(1/100)  -- Clics à 100 par seconde
    end
end

-- Fonction pour arrêter l'autoclick
local function stopClicking()
    clickingEnabled = false
end

-- Détection de la touche E pour démarrer ou arrêter l'autoclick
inputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.E then
        if clickingEnabled then
            stopClicking()
        else
            clickingEnabled = true
            startClicking()
        end
    end
end)
