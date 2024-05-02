function formatDate(year, month, day) {
  if (month < 10) {
    month = "0" + month;
  }
  if (day < 10) {
    day = "0" + day;
  }

  // return `${year}-${month}-${day}`;
  return year + "-" + month + "-" + day;
}

function isHoliday() {
  const today = new Date();
  const year = today.getFullYear();

  const holidayList = [
    `${year}-01-01`, // New Year's Day
    `${year}-01-07`, // Constitution Day
    // `${year}-02-31`,
    `${year}-03-06`,
    `${year}-04-07`,
    `${year}-04-10`,
    `${year}-05-01`,
    `${year}-06-28`,
    `${year}-06-28`,
    // `${year}-07-01`,
    `${year}-08-04`,
    `${year}-09-21`,
    // `${year}-10-01`,
    // `${year}-11-01`,
    `${year}-12-01`,
    `${year}-12-25`,
    `${year}-12-26`,
  ];

  const formattedToday = formatDate(
    today.getFullYear(),
    today.getMonth() + 1,
    today.getDate(),
  );
  const isTodayHoliday = holidayList.includes(formattedToday);

  const yesterday = new Date(today);
  yesterday.setDate(yesterday.getDate() - 1);

  const isYesterdaySunday = yesterday.getDay() === 0;
  const formattedYesterday = formatDate(
    yesterday.getFullYear(),
    yesterday.getMonth() + 1,
    yesterday.getDate(),
  );
  const isYesterdayHoliday = holidayList.includes(formattedYesterday);

  return isTodayHoliday || (isYesterdaySunday && isYesterdayHoliday);
}

console.log(isHoliday());
