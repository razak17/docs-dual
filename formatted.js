function parseAndFormatAims(str) {
  const aims = str.split(/\n(?=Aim \d+:)/).map(aim => {
    const [aimTitle, ...subPoints] = aim.split('\n');
    const [aimNumber, aimDescription] = aimTitle.split(': ');

    const parsedSubPoints = subPoints.map(point => {
      const [number, description] = point.split(': ');
      return { number, description };
    });

    return {
      number: aimNumber,
      description: aimDescription,
      subPoints: parsedSubPoints
    };
  });

  return aims;
}

const str = "Aim 1: Optimize and finalize the Melodi Absorbable Antibacterial Matrix formulation\n1.1: Conduct in vitro studies to determine optimal antibiotic concentrations and release kinetics\n1.2: Perform biocompatibility and degradation studies\n\nAim 2: Evaluate efficacy in a porcine model of capsular contracture\n2.1: Assess bacterial colonization reduction and tissue integration in vivo\n2.2: Analyze inflammatory markers and capsule formation\n\nAim 3: Prepare and submit IDE application for clinical trial\n3.1: Compile preclinical data and develop clinical protocol\n3.2: Submit IDE application and respond to FDA feedback\n\nAim 4: Initiate and conduct Phase I clinical trial\n4.1: Enroll patients and perform surgeries using Melodi Matrix\n4.2: Assess safety outcomes and preliminary efficacy data on capsular contracture recurrence";

const formattedAims = parseAndFormatAims(str);
console.log(JSON.stringify(formattedAims, null, 2));


function formatAims(aims) {
  return aims.map(aim => {
    const subPointsFormatted = aim.subPoints
      .map(sp => `  ${sp.number}: ${sp.description}`)
      .join('\n');

    return `${aim.number}: ${aim.description}\n${subPointsFormatted}`;
  }).join('\n\n');
}

console.log(formatAims(formattedAims));
