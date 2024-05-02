const items = [
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Alright, no problem.\n\nJust a quick reminder, please make sure to submit the PR for the new endpoint by the deadline on December 19th, 2023. If you encounter any difficulties or foresee any delays, please let me know so that we can adjust the timeline accordingly.\n\nIf you have any other questions or need any further clarification, feel free to reach out. Have a productive day!\n\nIs there anything else I can assist you with?",
    sender: "jesse",
    date: "2023-12-20T11:12:40.860000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "Nothing at the moment.",
    sender: "user",
    date: "2023-12-20T11:12:38.917000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Alright, sounds good. \n\nPlease continue monitoring the progress of integrating the new endpoints and let me know if there are any updates or issues that need attention.\n\nIf you have any questions or need any assistance in the future, don't hesitate to reach out. Have a great day!\n\nIs there anything else I can help you with today?",
    sender: "jesse",
    date: "2023-12-20T11:12:15.347000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "No.",
    sender: "user",
    date: "2023-12-20T11:12:13.523000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Alright, thank you for confirming. \n\nIn that case, please keep me updated on the progress of integrating the new endpoints. If there are any updates or issues that arise, please inform me as soon as possible so that we can address them promptly.\n\nIf you have any other questions or concerns in the future, feel free to reach out. Have a productive day!\n\nIs there anything else I can assist you with at the moment?",
    sender: "jesse",
    date: "2023-12-20T11:12:02.049000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "No.",
    sender: "user",
    date: "2023-12-20T11:12:00.197000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Thank you, Abdul. I appreciate your assistance.\n\nPlease let me know once you have an update from Isaac regarding the progress of integrating the new endpoints. Additionally, if he needs any support or clarification, please let me know so that I can provide the necessary assistance.\n\nIs there anything else you would like to discuss or any other tasks you need assistance with?",
    sender: "jesse",
    date: "2023-12-20T11:11:45.645000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "Sure.",
    sender: "user",
    date: "2023-12-20T11:11:44.056000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Great to hear that Isaac is already aware of the task. \n\nIn that case, could you please check with Isaac on the progress of integrating the new endpoints? It would be helpful to know if he has started working on it and if there are any updates or challenges he has encountered so far.",
    sender: "jesse",
    date: "2023-12-20T11:11:32.383000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "He has already been informed.",
    sender: "user",
    date: "2023-12-20T11:11:30.933000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Understood, Abdul. \n\nCould you please confirm if Isaac has already been informed about the need to integrate the new endpoints? If not, I can reach out to him and provide the necessary details.",
    sender: "jesse",
    date: "2023-12-20T11:11:10.921000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "That''s something Isaac has to do.",
    sender: "user",
    date: "2023-12-20T11:11:09.881000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Thank you for the update, Abdul. \n\nJust to clarify, are you referring to integrating the new endpoints into the existing codebase? \n\nIf so, could you please provide an estimate of how long you think this integration process will take? Additionally, do you foresee any potential challenges or dependencies that may affect the timeline?",
    sender: "jesse",
    date: "2023-12-20T11:09:42.976000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "The new endpoints just need to be integrated.",
    sender: "user",
    date: "2023-12-20T11:09:41.698000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "That's great to hear! Thank you for completing the task \"Submitting PR for the new endpoint\".\n\nIs there anything else you need assistance with or any other tasks you're currently working on for the Jesse AI project?",
    sender: "jesse",
    date: "2023-12-20T11:09:07.830000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "This task is done.",
    sender: "user",
    date: "2023-12-20T11:09:06.339000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Hi Abdul,\n\nI hope you're doing well. As the project manager for the Jesse AI project, I wanted to check in with you regarding the task \"Submitting PR for the new endpoint\". \n\nCould you please provide an update on the progress of this task? Is there anything you need help with or any blockers you're facing?",
    sender: "jesse",
    date: "2023-12-20T10:01:35.930000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "Alright, if you have any questions or need any further assistance in the future, feel free to reach out. \n\nHave a great day!",
    sender: "jesse",
    date: "2023-12-19T10:13:03.676000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message: "No.",
    sender: "user",
    date: "2023-12-19T10:13:02.738000",
  },
  {
    email: "abdul@reallygreattech.com",
    projects: ["Jesse AI"],
    message:
      "That's great to hear! Thank you for completing the task \"Data querying and display and Filter chat history by project\". \n\nIs there anything else you need assistance with or any other tasks you're currently working on for the Jesse AI project?",
    sender: "jesse",
    date: "2023-12-19T10:12:52.773000",
  },
];

let res = [];

for (let i = 0; i < items.length; i++) {
  if (items[i].sender === "jesse") {
    if (!items[i - 1] || items[i - 1]?.sender === "jesse") {
      res.push(items[i]);
      res.push({
        ...items[i],
        message: "",
        sender: "user",
      });
    }
  } else if (items[i].sender === "user") {
    if (items[i + 1] && items[i + 1]?.sender !== "user") {
      res.push(items[i + 1]);
      res.push(items[i]);
    }
  }
}

console.warn("DEBUGPRINT[1]: chats.js:85: res=", res);
