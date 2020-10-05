# Invoke speech engine
Add-Type -AssemblyName System.Speech
$SpeechSynth = New-Object System.Speech.Synthesis.SpeechSynthesizer

# Parse random cat fact with API and SpeechSynth to say it aloud. -UseBasicParsing Parameter to ignore IE settings
$CatFact = (ConvertFrom-Json (Invoke-WebRequest -Uri https://catfact.ninja/fact -UseBasicParsing))
$SpeechSynth.Speak("did you know?")
$SpeechSynth.Speak($CatFact.fact)
