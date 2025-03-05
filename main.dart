enum CharacterClass {Warrior, Mage, Archer}
enum Weather {Sunny, Rainy, Stormy}
enum TimeOfDay {Morning, Noon, Evening, Night}

void main() {
  CharacterClass characterClass = CharacterClass.Warrior;
  Weather weather = Weather.Rainy;
  TimeOfDay timeOfDay = TimeOfDay.Noon;
  int strength = 38;
  
  
  switch (characterClass) {
    case CharacterClass.Warrior:
      switch (timeOfDay) {
        case TimeOfDay.Morning:
        case TimeOfDay.Noon:
          strength += 10;
        case TimeOfDay.Evening:
        case TimeOfDay.Night:
            strength -= 10;
      }
        
    case CharacterClass.Mage:
      switch (timeOfDay) {
        case TimeOfDay.Morning:
        case TimeOfDay.Noon:
        case TimeOfDay.Evening:
        case TimeOfDay.Night:
            strength = strength;
      }
      switch (weather) {
        case Weather.Sunny:
          strength -= 5;
        case Weather.Rainy:
          strength = strength;
        case Weather.Stormy:
          strength += 15;
      }
      
    case CharacterClass.Archer:
      switch (timeOfDay) {
        case TimeOfDay.Morning:
        case TimeOfDay.Noon:
        case TimeOfDay.Evening:
        case TimeOfDay.Night:
            strength = strength;
      }
      switch (weather) {
        case Weather.Sunny:
          strength += 10;
        case Weather.Rainy:
          strength -= 15;
        case Weather.Stormy:
          strength -= 15;
      }
}

print ("Character: ${characterClass.name} \nWeather: ${weather.name} \nTime of Day: ${timeOfDay.name} \nStrength: ${strength}"); 
}