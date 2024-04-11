enum WorkflowItemTypes {
  heatOn,
  setLEDbrightness,
  wait,
  heatOff,
  fanOn,
  fanOnGlobal,
}

extension WorkflowItemTypesExtension on WorkflowItemTypes {
  String get value {
    switch (this) {
      case WorkflowItemTypes.heatOn:
        return "heatOn";
      case WorkflowItemTypes.setLEDbrightness:
        return "setLEDbrightness";
      case WorkflowItemTypes.wait:
        return "wait";
      case WorkflowItemTypes.heatOff:
        return "heatOff";
      case WorkflowItemTypes.fanOn:
        return "fanOn";
      case WorkflowItemTypes.fanOnGlobal:
        return "fanOnGlobal";
      default:
        return "";
    }
  }
}
