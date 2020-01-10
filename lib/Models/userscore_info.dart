class UserScoreInfo {
  final int stepsToday;
  final double kCalBurnt;
  final int currentLevel;
  final double distWalkedTday;
  final double targetDist;
  final double minActiveToday;
  final double maxWaterIntake;
  final double waterIntake;

  const UserScoreInfo({
    this.stepsToday,
    this.kCalBurnt,
    this.currentLevel,
    this.distWalkedTday,
    this.targetDist,
    this.minActiveToday,
    this.maxWaterIntake,
    this.waterIntake
  });
}
