class Workflows {
  static final List<Map<String, dynamic>> defaultWorkflows = [
    {
      "id": 1,
      "name": "Workflow #1",
      "payload": [
        {"type": "heatOn", "id": 1, "payload": 185},
        {"type": "wait", "id": 2, "payload": 5},
        {"type": "fanOnGlobal", "id": 3, "payload": 36.5},
        {"type": "heatOff", "id": 4},
      ],
      "group": "Default",
    },
    {
      "id": 2,
      "name": "Workflow #2",
      "payload": [
        {"type": "heatOn", "id": 1, "payload": 190},
        {"type": "wait", "id": 2, "payload": 5},
        {"type": "fanOnGlobal", "id": 3, "payload": 36.5},
        {"type": "heatOff", "id": 4},
      ],
      "group": "Default",
    },
    {
      "id": 3,
      "name": "Workflow #3",
      "payload": [
        {"type": "heatOn", "id": 1, "payload": 195},
        {"type": "wait", "id": 2, "payload": 5},
        {"type": "fanOnGlobal", "id": 3, "payload": 36.5},
        {"type": "heatOff", "id": 4},
      ],
      "group": "Default",
    },
    {
      "id": 4,
      "name": "Workflow #4",
      "payload": [
        {"type": "heatOn", "id": 1, "payload": 200},
        {"type": "wait", "id": 2, "payload": 5},
        {"type": "fanOnGlobal", "id": 3, "payload": 36.5},
        {"type": "heatOff", "id": 4},
      ],
      "group": "Default",
    },
  ];

  static final List<Map<String, dynamic>> premadeWorkflows = [
    {
      "id": 1,
      "name": "7 Step for CBC",
      "payload": [
        {"type": "heatOn", "id": 1, "payload": 179},
        {"type": "fanOn", "id": 2, "payload": 12},
        {"type": "heatOn", "id": 3, "payload": 185},
        {"type": "fanOn", "id": 4, "payload": 12},
        {"type": "heatOn", "id": 5, "payload": 191},
        {"type": "fanOn", "id": 6, "payload": 12},
        {"type": "heatOn", "id": 7, "payload": 197},
        {"type": "fanOn", "id": 8, "payload": 12},
        {"type": "heatOn", "id": 9, "payload": 205},
        {"type": "fanOn", "id": 10, "payload": 12},
        {"type": "heatOn", "id": 11, "payload": 211},
        {"type": "fanOn", "id": 12, "payload": 12},
        {"type": "heatOn", "id": 13, "payload": 222},
        {"type": "fanOn", "id": 14, "payload": 12},
        {"type": "heatOff", "id": 15},
        {"type": "heatOff", "id": 16},
      ],
      "group": "Premade",
    },
    {
      "id": 2,
      "name": "Really Off",
      "payload": [
        {"type": "heatOff", "id": 1},
        {"type": "setLEDbrightness", "id": 2, "payload": 0},
      ],
      "group": "Premade",
    },
    {
      "id": 3,
      "name": "Really On",
      "payload": [
        {"type": "heatOn", "id": 1, "payload": null},
        {"type": "setLEDbrightness", "id": 2, "payload": 70},
      ],
      "group": "Premade",
    },
    {
      "id": 4,
      "name": "Developer's Special",
      "payload": [
        {"type": "setLEDbrightness", "id": 1, "payload": 70},
        {"type": "heatOn", "id": 2, "payload": 187},
        {"type": "wait", "id": 3, "payload": 0},
        {"type": "fanOn", "id": 4, "payload": 3.75},
        {"type": "fanOn", "id": 5, "payload": 0.5},
        {"type": "fanOn", "id": 6, "payload": 0.5},
        {"type": "fanOn", "id": 7, "payload": 0.5},
        {"type": "fanOnGlobal", "id": 8, "payload": 38},
        {"type": "heatOff", "id": 9},
        {"type": "setLEDbrightness", "id": 10, "payload": 0},
      ],
      "group": "Premade",
    },
    {
      "id": 5,
      "name": "TEMP 1 🟦",
      "payload": [
        {"type": "heatOff", "id": 1, "payload": null},
        {"type": "heatOn", "id": 2, "payload": 179},
      ],
      "group": "Premade",
    },
    {
      "id": 6,
      "name": "TEMP 2 🔵",
      "payload": [
        {"type": "heatOff", "id": 1, "payload": null},
        {"type": "heatOn", "id": 2, "payload": 185},
      ],
      "group": "Premade",
    },
    {
      "id": 7,
      "name": "TEMP 3 🟩",
      "payload": [
        {"type": "heatOff", "id": 1, "payload": null},
        {"type": "heatOn", "id": 2, "payload": 191},
      ],
      "group": "Premade",
    },
    {
      "id": 8,
      "name": "TEMP 4 🟢",
      "payload": [
        {"type": "heatOff", "id": 1, "payload": null},
        {"type": "heatOn", "id": 2, "payload": 199},
      ],
      "group": "Premade",
    },
    {
      "id": 9,
      "name": "TEMP 5 🟨",
      "payload": [
        {"type": "heatOff", "id": 1, "payload": null},
        {"type": "heatOn", "id": 2, "payload": 205},
      ],
      "group": "Premade",
    },
    {
      "id": 10,
      "name": "TEMP 6 🟡",
      "payload": [
        {"type": "heatOff", "id": 1, "payload": null},
        {"type": "heatOn", "id": 2, "payload": 211},
      ],
      "group": "Premade",
    },
    {
      "id": 11,
      "name": "TEMP 7 🟥",
      "payload": [
        {"type": "heatOff", "id": 1, "payload": null},
        {"type": "heatOn", "id": 2, "payload": 217},
      ],
      "group": "Premade",
    },
    {
      "id": 12,
      "name": "TEMP 8 🔴",
      "payload": [
        {"type": "heatOff", "id": 1, "payload": null},
        {"type": "heatOn", "id": 2, "payload": 230},
      ],
      "group": "Premade",
    },
    {
      "id": 13,
      "name": "PRIME 🌋",
      "payload": [
        {"type": "fanOn", "id": 1, "payload": 5},
      ],
      "group": "Premade",
    },
    {
      "id": 14,
      "name": "DRY TUBE ♨️",
      "payload": [
        {"type": "heatOn", "id": 1, "payload": 230},
        {"type": "fanOn", "id": 2, "payload": 60},
        {"type": "heatOn", "id": 3, "payload": 179},
        {"type": "heatOff", "id": 4, "payload": null},
      ],
      "group": "Premade",
    },
  ];
}
