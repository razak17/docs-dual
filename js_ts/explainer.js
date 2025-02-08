//   const explainerNotes  = {
//     "Significance": "{\n  \"rationale\": \"The Significance section provides essential context for the research project by outlining the challenges of hard-to-heal wounds, the current limitations in treatment, and the potential of senescent keratinocytes as a novel therapeutic approach. This background establishes the scientific and clinical relevance of the proposed research, justifying the need for innovative solutions in wound healing.\",\n  \"sources_used\": [\n    \"Project Table: Used for project title, purpose, and keywords related to wound healing and cell therapy\",\n    \"Project Files: Inferred to contain preliminary data on senescent keratinocytes and their potential in wound healing\",\n    \"Grant Outline: Likely used for structuring the significance section and highlighting key points\",\n    \"Company Files: Not directly referenced for this section\"\n  ],\n  \"additional_notes\": \"The Specific Aims subsection within Scientific Rigor provides a clear outline of the research direction, particularly Aim 1 focusing on optimizing senescent keratinocyte production and characterization.\"\n}",
//     "Innovation": "{\n  \"rationale\": \"The Innovation section is crucial for highlighting how EVOCellic differentiates itself from existing wound healing approaches. It outlines several novel aspects of the therapy, including the use of senescent keratinocytes, allogenic cell therapy, freeze-dried formulation, and composite wound healing approach, which collectively represent a significant departure from current paradigms in wound treatment.\",\n  \"sources\": [\n    \"Project Table\",\n    \"Project Files\"\n  ],\n  \"additional_notes\": \"The Innovation section effectively synthesizes information from the project overview and technical details to present a comprehensive picture of EVOCellic's unique features. While specific source documents are not provided, the content appears to be derived from a combination of project documentation and scientific background knowledge.\"\n}",
//     "Approach": "{\n  \"rationale\": \"This section outlines a comprehensive research approach for developing an advanced therapeutic medicinal product using allogenic cell therapy for hard-to-heal wounds. It provides a logical progression from cell sourcing and production to formulation development and preclinical testing, addressing key aspects of wound healing and potential challenges in each stage.\",\n  \"sources_used\": [\n    \"Project Table\",\n    \"Appendix File\"\n  ],\n  \"additional_notes\": \"The Specific Aims section provides a clear structure for the research plan, detailing methods, potential challenges, and interpretation of results for each aim. The timeline and future directions are also clearly outlined.\"\n}"
//   }
//
// function parseJsonStructure(data, key = null) {
//     const parsedData = {};
//     for (let [key, value] of Object.entries(data)) {
//       parsedData[key] = JSON.parse(value);
//     }
//   return parsedData
// }
//
// // Call the function
// const fullParse = parseJsonStructure(explainerNotes);
// console.warn("DEBUGPRINT[171]: explainer.js:26: fullParse=", fullParse)

const notes = [
  {
    document: "Company Files",
    parts_used: [
      "Paragraph starting with 'Neurodegenerative diseases are incurable debilitating disorders...'",
      "Paragraph starting with 'Many neurodegenerative disorders, including ALS...'",
      "Paragraph starting with 'Genetic, histopathological and experimental evidences indicate...'",
    ],
  },
  {
    document: "Project Files",
    parts_used: ["Background section", "Long-term Objectives section"],
  },
];

function concatenateValues(obj) {
  let body = "";
  for (const key in obj) {
    if (typeof obj[key] === "object" && obj[key] !== null) {
      // If the key's value is an object or array, include the key name in the output
      body += `\n${key}:\n${concatenateValues(obj[key])}`;
    } else if (typeof obj[key] === "string") {
      body += `${key}:\n${obj[key]}`;
    }
  }

  // Use a regular expression to remove numbers before a colon
  body = body.replace(/\d+:/g, '');

  return body.trim();
}

// Call the function
const fullConcat = concatenateValues(notes);
console.warn(fullConcat);
