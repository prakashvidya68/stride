import 'package:stride/Models/userdetails_info.dart';

import './Models/userTransaction_info.dart';
import './Models/userscore_info.dart';

const dummyUserScore = const UserScoreInfo(
  stepsToday: 1024,
  currentLevel: 3,
  distWalkedTday: 12.89,
  kCalBurnt: 12.4,
  targetDist: 15,
);

const dummyUserCoins = const UserTransactionInfo(
  earned: 55.27,
  spent: 44.00,
);

const dummyUserInfo = const UserDetails(
  age: 21,
  email: "ayush.abhinav1999@gmail.com",
  gender: "M",
  height: 169,
  name: "Abhinav Ayush",
  weight: 68.00,
  imageUrl: "www.hfbvjfdjvhjfhjbh.ckmbkmrk/rjbjrr/rbvjrjfnvjr"
);
