function getNotificationText(title, notif) {
  const [homeTeam, awayTeam] = title.split(" - ");
  const notifParts = notif.split(" ");
  const goalIndex = notif.indexOf("[") + 1;
  const homeScore = notif[goalIndex];
  const awayScore = notif[notif.lastIndexOf("-") + 2];
  const minute = notifParts[1].replace("'", "");

  const homeTeamScored = notif[goalIndex - 3] === "!";
  const whoScored = homeTeamScored ? homeTeam : awayTeam;
  const finalHomeScore = homeTeamScored ? homeScore : notif[goalIndex - 5];
  const finalAwayScore = homeTeamScored ? awayScore : homeScore;

  if (notif.includes("Correction")) {
    const reason = notif.split("!")[0].split(" ").slice(1).join(" ");

    const goalNotification =
      "The last goal for " +
      whoScored +
      " has been ruled out for " +
      reason +
      ". Score is still " +
      homeTeam +
      " " +
      finalHomeScore +
      ", " +
      awayTeam +
      " " +
      finalAwayScore;

    return goalNotification;
  } else {
    let goalscorer = notifParts.slice(6).join(" ");
    const isOwnGoal = goalscorer.includes("Own goal");

    if (isOwnGoal) {
      goalscorer = goalscorer.split("(")[0].trim();
    }

    const goalNotification =
      "Goal for " +
      (homeTeamScored ? homeTeam : awayTeam) +
      " against " +
      (homeTeamScored ? awayTeam : homeTeam) +
      ". The goal was " +
      (isOwnGoal ? "an own goal scored by " : "scored by ") +
      goalscorer +
      " Score is " +
      homeTeam +
      " " +
      finalHomeScore +
      ", " +
      awayTeam +
      " " +
      finalAwayScore +
      ". " +
      minute +
      " minutes have been played.";

    return goalNotification;
  }
}

// Test cases
const notif1 = "B 48' Goal! [4] - 0 Can E.";
const notif2 = "B 48' Goal! 4 - [1] Rudiger A. (Own goal)";
const notif3 = "Correction (VAR - offside)! [4] - 0";
const notif4 = "B 23' Goal! [2] - 1 Player A.";
const notif5 = "B 75' Goal! 3 - [2] Player B.";
const notif6 = "Correction (VAR - foul)! [3] - 1";
const notif7 = "B 60' Goal! [5] - 2 Player C. (Own goal)";
const notif8 = "Correction (VAR - foul)! 1 - [2]";
const title = "Germany - Scotland";

console.log(getNotificationText(title, notif1));
console.log(getNotificationText(title, notif2));
console.log(getNotificationText(title, notif3));
console.log(getNotificationText(title, notif4));
console.log(getNotificationText(title, notif5));
console.log(getNotificationText(title, notif6));
console.log(getNotificationText(title, notif7));
console.log(getNotificationText(title, notif8));
