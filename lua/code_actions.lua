local results={ {
    command = {
      arguments = { {
          data = <1>{
            action = "Move to file",
            endLine = 112,
            endOffset = 7,
            file = "/home/razak/personal/workspace/coding/portfolio/docs-clone/src/app/documents/[documentId]/editor.tsx",
            includeInteractiveActions = true,
            kind = "refactor.extract",
            refactor = "Move to file",
            startLine = 112,
            startOffset = 7
          },
          kind = "refactor.extract",
          title = "Move to file"
        } },
      command = "interactive_codeaction",
      title = "Move to file"
    },
    data = <table 1>,
    kind = "refactor.extract",
    title = "Move to file"
  }, {
    data = {
      action = "Move to a new file",
      endLine = 112,
      endOffset = 7,
      file = "/home/razak/personal/workspace/coding/portfolio/docs-clone/src/app/documents/[documentId]/editor.tsx",
      includeInteractiveActions = true,
      kind = "refactor.extract",
      refactor = "Move to a new file",
      startLine = 112,
      startOffset = 7
    },
    kind = "refactor.extract",
    title = "Move to a new file"
  }, {
    edit = {
      changes = {
        ["file:///home/razak/personal/workspace/coding/portfolio/docs-clone/src/app/documents/%5bdocumentId%5d/editor.tsx"] = { {
            newText = "import { Ruler } from 'lucide-react';\n",
            range = {
              ["end"] = {
                character = 0,
                line = 25
              },
              start = {
                character = 0,
                line = 25
              }
            }
          } }
      }
    },
    kind = "quickfix",
    title = 'Add import from "lucide-react"'
  }, {
    edit = {
      changes = {
        ["file:///home/razak/personal/workspace/coding/portfolio/docs-clone/src/app/documents/%5bdocumentId%5d/editor.tsx"] = { {
            newText = "import { Ruler } from './ruler';\n",
            range = {
              ["end"] = {
                character = 0,
                line = 25
              },
              start = {
                character = 0,
                line = 25
              }
            }
          } }
      }
    },
    kind = "quickfix",
    title = 'Add import from "./ruler"'
  }, {
    command = {
      arguments = { "remove_unused_imports" },
      command = "call_api_function",
      title = "Remove unused imports"
    },
    kind = "quickfix",
    title = "Remove unused imports"
  }, {
    command = {
      arguments = { "organize_imports" },
      command = "call_api_function",
      title = "Organize imports"
    },
    kind = "quickfix",
    title = "Organize imports"
  }, {
    command = {
      arguments = { "fix_all" },
      command = "call_api_function",
      title = "Fix all problems"
    },
    kind = "quickfix",
    title = "Fix all problems"
  }, {
    command = {
      arguments = { "add_missing_imports" },
      command = "call_api_function",
      title = "Add all missing imports"
    },
    kind = "quickfix",
    title = "Add all missing imports"
  }, {
    command = {
      arguments = { "remove_unused" },
      command = "call_api_function",
      title = "Remove unused"
    },
    kind = "quickfix",
    title = "Remove unused"
  } }
