local Client = game:GetService"Players".LocalPlayer

function AntiKO()
   local BodyEffects, RagdollConstraints = Client.Character:WaitForChild"BodyEffects", Client.Character:WaitForChild"RagdollConstraints";
   local KO, Dead = BodyEffects:FindFirstChild"K.O", BodyEffects:FindFirstChild"Dead";
   
   if KO and Dead and RagdollConstraints then
       RagdollConstraints:Destroy()
       KO:Destroy()
       Dead:Destroy()
   end
end
AntiKO()

Client.CharacterAdded:Connect(function()
  wait(1)
 
  AntiKO()
end)
