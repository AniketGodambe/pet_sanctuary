import 'package:get/get.dart';
import 'package:pet_sanctuary/app/data_models/pets_model/pets_model.dart';

class HomeViewController extends GetxController {
  RxList<PetsModel> petsList = <PetsModel>[].obs;

  @override
  void onInit() {
    getJsonParce();

    super.onInit();
  }

  getJsonParce() {
    petsList.addAll(
      petJson.map((json) => PetsModel.fromJson(json)).toList(),
    );
  }

  List<Map<String, Object>> petJson = [
    {
      "name": "Dog",
      "shortInfo": "Loyal and friendly animals known as man's best friend.",
      "climate": "Moderate to cold climates, depending on breed.",
      "food": ["Meat", "Dry dog food", "Rice", "Vegetables"],
      "diseases": ["Parvovirus", "Canine Distemper", "Rabies", "Kennel Cough"],
      "cures": [
        {
          "title": "Parvovirus",
          "cure": "Vaccination, antiviral medication, supportive care."
        },
        {
          "title": "Canine Distemper",
          "cure": "Vaccination, hydration, antipyretic drugs."
        },
        {"title": "Rabies", "cure": "Vaccination, quarantine in early stages."},
        {
          "title": "Kennel Cough",
          "cure": "Antibiotics, cough suppressants, isolation."
        }
      ],
      "preventiveCare": ["Regular vaccinations", "Deworming", "Proper diet"],
      "advantages": ["Great companions", "Provide security"],
      "disadvantages": ["Require regular grooming", "Can be noisy"]
    },
    {
      "name": "Cat",
      "shortInfo": "Independent and curious pets known for agility.",
      "climate": "Prefer moderate indoor temperatures.",
      "food": ["Fish", "Dry cat food", "Chicken", "Milk"],
      "diseases": ["Feline Leukemia", "FIV", "Ringworm"],
      "cures": [
        {
          "title": "Feline Leukemia",
          "cure": "Antiviral drugs, supportive care"
        },
        {"title": "FIV", "cure": "Antiviral treatment, immunity boosters."},
        {
          "title": "Ringworm",
          "cure": "Antifungal medication, topical treatments."
        }
      ],
      "preventiveCare": ["Vaccinations", "Regular grooming", "Flea control"],
      "advantages": ["Low maintenance", "Independent"],
      "disadvantages": ["Aloof behavior", "Require litter box maintenance"]
    },
    {
      "name": "Parrot",
      "shortInfo": "Colorful, intelligent birds that are social.",
      "climate": "Warm, tropical climate preferred.",
      "food": ["Seeds", "Fruits", "Vegetables"],
      "diseases": ["Psittacosis", "Beak and feather disease"],
      "cures": [
        {"title": "Psittacosis", "cure": "Antibiotics"},
        {"title": "Beak and feather disease", "cure": "Symptomatic care"}
      ],
      "preventiveCare": [
        "Clean cage regularly",
        "Provide toys",
        "Social interaction"
      ],
      "advantages": ["Can mimic sounds", "Entertaining"],
      "disadvantages": ["Require attention", "Can be noisy"]
    },
    {
      "name": "Rabbit",
      "shortInfo": "Small, furry animals known for their long ears.",
      "climate": "Cool and moderate climate.",
      "food": ["Hay", "Leafy greens", "Carrots"],
      "diseases": ["Snuffles", "GI stasis"],
      "cures": [
        {"title": "Snuffles", "cure": "Antibiotics"},
        {"title": "GI stasis", "cure": "Fluids, fiber-rich diet"}
      ],
      "preventiveCare": ["Keep in clean environment", "Regular grooming"],
      "advantages": ["Easy to handle", "Good for small spaces"],
      "disadvantages": ["Need special diet", "Can chew furniture"]
    },
    {
      "name": "Hamster",
      "shortInfo": "Small rodents known for being easy to care for.",
      "climate": "Indoor environments with moderate temperature.",
      "food": ["Seeds", "Vegetables", "Pellets"],
      "diseases": ["Wet tail", "Respiratory infections"],
      "cures": [
        {"title": "Wet tail", "cure": "Antibiotics, hydration"},
        {"title": "Respiratory infections", "cure": "Antibiotics"}
      ],
      "preventiveCare": ["Clean cage regularly", "Provide bedding"],
      "advantages": ["Low maintenance", "Small space needed"],
      "disadvantages": ["Nocturnal", "Short lifespan"]
    },
    {
      "name": "Goldfish",
      "shortInfo": "Popular freshwater aquarium fish with vibrant colors.",
      "climate": "Cool, freshwater environments.",
      "food": ["Fish flakes", "Pellets", "Vegetables"],
      "diseases": ["Fin rot", "Ich"],
      "cures": [
        {"title": "Fin rot", "cure": "Antibiotics"},
        {"title": "Ich", "cure": "Antifungal treatments"}
      ],
      "preventiveCare": ["Keep water clean", "Regular water changes"],
      "advantages": ["Easy to care for", "Inexpensive"],
      "disadvantages": ["Sensitive to water quality", "Small tank space needed"]
    },
    {
      "name": "Guinea Pig",
      "shortInfo": "Friendly, social rodents that are easy to care for.",
      "climate": "Indoor environments with moderate temperature.",
      "food": ["Hay", "Leafy greens", "Pellets"],
      "diseases": ["Scurvy", "Respiratory infections"],
      "cures": [
        {"title": "Scurvy", "cure": "Vitamin C supplements"},
        {"title": "Respiratory infections", "cure": "Antibiotics"}
      ],
      "preventiveCare": ["Provide vitamin C", "Clean cage"],
      "advantages": ["Good for children", "Social animals"],
      "disadvantages": ["Require vitamin C", "Can be messy"]
    },
    {
      "name": "Snake",
      "shortInfo": "Reptiles that require minimal maintenance.",
      "climate": "Warm, controlled temperature environment.",
      "food": ["Mice", "Rats", "Insects"],
      "diseases": ["Mouth rot", "Respiratory infections"],
      "cures": [
        {"title": "Mouth rot", "cure": "Antibiotics"},
        {"title": "Respiratory infections", "cure": "Antibiotics"}
      ],
      "preventiveCare": ["Keep habitat clean", "Maintain temperature"],
      "advantages": ["Low maintenance", "Require infrequent feeding"],
      "disadvantages": ["Special feeding requirements", "Some people fear them"]
    },
    {
      "name": "Turtle",
      "shortInfo": "Long-living reptiles with hard shells.",
      "climate": "Warm, semi-aquatic environment.",
      "food": ["Vegetables", "Insects", "Pellets"],
      "diseases": ["Shell rot", "Vitamin A deficiency"],
      "cures": [
        {"title": "Shell rot", "cure": "Antibiotic treatment"},
        {"title": "Vitamin A deficiency", "cure": "Vitamin A supplements"}
      ],
      "preventiveCare": ["Maintain clean water", "Provide UV light"],
      "advantages": ["Long lifespan", "Low maintenance"],
      "disadvantages": ["Special habitat needed", "Can carry salmonella"]
    },
    {
      "name": "Ferret",
      "shortInfo": "Playful, curious mammals with high energy.",
      "climate": "Cool, indoor environments.",
      "food": ["High-protein food", "Dry ferret food"],
      "diseases": ["Adrenal disease", "Insulinoma"],
      "cures": [
        {"title": "Adrenal disease", "cure": "Hormonal treatments"},
        {"title": "Insulinoma", "cure": "Medication, surgery"}
      ],
      "preventiveCare": ["Regular vet check-ups", "Provide mental stimulation"],
      "advantages": ["Entertaining", "Social"],
      "disadvantages": ["High energy", "Can be destructive"]
    },
    {
      "name": "Chinchilla",
      "shortInfo":
          "Small, nocturnal rodents with soft fur, native to the Andes mountains.",
      "climate": "Cool, dry indoor environments.",
      "food": ["Hay", "Pellets", "Dried fruit"],
      "diseases": ["Respiratory infections", "Heat stroke"],
      "cures": [
        {"title": "Respiratory infections", "cure": "Antibiotics"},
        {"title": "Heat stroke", "cure": "Cooling and hydration"}
      ],
      "preventiveCare": ["Keep in cool environment", "Provide dust baths"],
      "advantages": ["Soft fur", "Low odor"],
      "disadvantages": ["Nocturnal", "Require special dust baths"]
    },
    {
      "name": "Budgerigar (Budgie)",
      "shortInfo": "Small, social parrots that are popular as pets.",
      "climate": "Moderate, indoor environments.",
      "food": ["Seeds", "Fruits", "Vegetables"],
      "diseases": ["Psittacosis", "Feather plucking"],
      "cures": [
        {"title": "Psittacosis", "cure": "Antibiotics"},
        {"title": "Feather plucking", "cure": "Behavioral enrichment"}
      ],
      "preventiveCare": ["Social interaction", "Clean cage"],
      "advantages": ["Easy to train", "Can mimic sounds"],
      "disadvantages": ["Require attention", "Can be noisy"]
    },
    {
      "name": "Horse",
      "shortInfo": "Large, strong animals often used for riding and work.",
      "climate": "Adaptable but prefer moderate climates.",
      "food": ["Grass", "Hay", "Grain"],
      "diseases": ["Colic", "Laminitis"],
      "cures": [
        {"title": "Colic", "cure": "Veterinary treatment, hydration"},
        {"title": "Laminitis", "cure": "Specialized hoof care, diet management"}
      ],
      "preventiveCare": ["Regular hoof care", "Adequate exercise"],
      "advantages": ["Strong and versatile", "Good for companionship"],
      "disadvantages": ["Expensive to maintain", "Require space and training"]
    },
    {
      "name": "Goat",
      "shortInfo": "Hardy animals known for their grazing habits.",
      "climate": "Adaptable to various climates.",
      "food": ["Grass", "Hay", "Grains"],
      "diseases": ["Bloat", "Foot rot"],
      "cures": [
        {"title": "Anti-bloat medication", "cure": "Bloat"},
        {"title": "Foot rot", "cure": "Antibiotics, proper hoof care"}
      ],
      "preventiveCare": ["Hoof trimming", "Parasite control"],
      "advantages": ["Low maintenance", "Good for milk"],
      "disadvantages": ["Can be destructive", "Require secure fencing"]
    },
    {
      "name": "Pig",
      "shortInfo": "Intelligent animals often kept as livestock and pets.",
      "climate": "Moderate climate, avoid extreme temperatures.",
      "food": ["Vegetables", "Grain", "Specialized pig feed"],
      "diseases": ["Swine flu", "Parasites"],
      "cures": [
        {"title": "Swine flu", "cure": "Supportive care"},
        {"title": "Parasites", "cure": "Deworming treatments"}
      ],
      "preventiveCare": ["Regular deworming", "Proper hygiene"],
      "advantages": ["Intelligent", "Can be trained"],
      "disadvantages": ["Require large space", "Can be messy"]
    },
    {
      "name": "Canary",
      "shortInfo": "Small songbirds known for their melodious singing.",
      "climate": "Moderate indoor environment.",
      "food": ["Seeds", "Vegetables", "Egg food"],
      "diseases": ["Air sac mites", "Feather plucking"],
      "cures": [
        {"title": "Air sac mites", "cure": "Mite treatments"},
        {"title": "Feather plucking", "cure": "Provide mental stimulation"}
      ],
      "preventiveCare": ["Regular cage cleaning", "Provide mental stimulation"],
      "advantages": ["Beautiful singing", "Low maintenance"],
      "disadvantages": ["Sensitive to cold", "Can be fragile"]
    },
    {
      "name": "Lizard",
      "shortInfo":
          "Reptiles that come in many varieties, often kept as exotic pets.",
      "climate": "Warm, controlled temperature environment.",
      "food": [
        "Insects",
        "Vegetables (species-dependent)",
        "Commercial reptile food"
      ],
      "diseases": ["Metabolic bone disease", "Respiratory infections"],
      "cures": [
        {
          "title": "Metabolic bone disease",
          "cure": "Calcium supplements, UV light"
        },
        {
          "title": "Respiratory infections",
          "cure": "Antibiotics, maintain warmth"
        }
      ],
      "preventiveCare": ["UV lighting", "Provide hiding places"],
      "advantages": ["Unique pets", "Require less attention"],
      "disadvantages": ["Specific diet", "Require special habitat"]
    },
    {
      "name": "Duck",
      "shortInfo": "Waterfowl often kept for eggs, meat, and as pets.",
      "climate": "Temperate climates with access to water.",
      "food": ["Grains", "Vegetables", "Insects"],
      "diseases": ["Duck plague", "Bumblefoot"],
      "cures": [
        {"title": "Duck plague", "cure": "Vaccination"},
        {"title": "Bumblefoot", "cure": "Clean bandages, antibiotics"}
      ],
      "preventiveCare": ["Clean water access", "Proper bedding"],
      "advantages": ["Provide eggs and meat", "Can be good pets"],
      "disadvantages": ["Need water access", "Can be noisy"]
    },
    {
      "name": "Goose",
      "shortInfo":
          "Large waterfowl known for their loyalty and protective nature.",
      "climate": "Temperate climates with water access.",
      "food": ["Grass", "Grains", "Vegetables"],
      "diseases": ["Goose parvovirus", "Avian influenza"],
      "cures": [
        {"title": "Goose parvovirus", "cure": "Vaccination"},
        {"title": "Avian influenza", "cure": "Symptomatic treatment, isolation"}
      ],
      "preventiveCare": ["Vaccinations", "Keep water clean"],
      "advantages": ["Provide eggs", "Good guard animals"],
      "disadvantages": ["Can be aggressive", "Require open space"]
    },
    {
      "name": "Hermit Crab",
      "shortInfo":
          "Small crustaceans that require unique care and a shell to live in.",
      "climate": "Warm, humid environment.",
      "food": ["Special hermit crab food", "Fruits", "Vegetables"],
      "diseases": ["Shell rot", "Mites"],
      "cures": [
        {"title": "Shell rot", "cure": "Antibiotics, clean environment"},
        {"title": "Mites", "cure": "Regular cleaning, mite treatment"}
      ],
      "preventiveCare": ["Maintain humidity", "Provide spare shells"],
      "advantages": ["Low maintenance", "Unique pets"],
      "disadvantages": ["Require humidity control", "Can be fragile"]
    }
  ];
}

var data = [];

var epty = [
  {"title": "", "cure": ""},
  {"title": "", "cure": ""}
];
