enum CharacterClass {Warrior, Mage, Archer}
enum Weather {sunny, rainy, stormy}
enum TimeOfDay {morning, noon, evening, night}

void main() {
  CharacterClass characterClass = CharacterClass.Warrior;
  Weather weather = Weather.rainy;
  TimeOfDay timeOfDay = TimeOfDay.noon;
  int baseStrength = 38;
  int newStrength = baseStrength;
  
  
  switch (characterClass) {
    case CharacterClass.Warrior:
      switch (timeOfDay) {
        case TimeOfDay.morning:
        case TimeOfDay.noon:
          newStrength += 10;
        case TimeOfDay.evening:
        case TimeOfDay.night:
          newStrength -= 10;
      }
        
    case CharacterClass.Mage:
      switch (timeOfDay) {
        case TimeOfDay.morning:
        case TimeOfDay.noon:
        case TimeOfDay.evening:
        case TimeOfDay.night:
          newStrength = baseStrength;
      }
      switch (weather) {
        case Weather.sunny:
          newStrength -= 5;
        case Weather.rainy:
          newStrength;
        case Weather.stormy:
          newStrength += 15;
      }
      
    case CharacterClass.Archer:
      switch (timeOfDay) {
        case TimeOfDay.morning:
        case TimeOfDay.noon:
        case TimeOfDay.evening:
        case TimeOfDay.night:
          newStrength = baseStrength;
      }
      switch (weather) {
        case Weather.sunny:
          newStrength += 10;
        case Weather.rainy:
          newStrength -= 15;
        case Weather.stormy:
          newStrength -= 15;
      }
}


print("Your ${characterClass.name} has a strength of $newStrength in ${weather.name} weather " "${(timeOfDay == TimeOfDay.morning || timeOfDay == TimeOfDay.evening) ? 'in the' : 'at'} ${timeOfDay.name}. " "${(newStrength > baseStrength ? 'Dangerous!' : 'Not optimal. Be careful out there.')}");
}