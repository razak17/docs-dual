import Quill from "quill";
import { Dispatch, SetStateAction, useEffect, useRef, useState } from "react";
import { QuillEditor } from "../../../components";
import AppTypography from "../../../components/AppTypography";
import { AppTypographyVariant } from "../../../types";
import TipTap from "../../../components/RichTextEditor/TipTap";


const FileViewer = () => {
  const [content, setContent] = useState<string | null>(null);

  const loadContent = () => {
    const storedContent = localStorage.getItem("quill-editor-content");
    if (storedContent) {
      setContent(storedContent);
    } else {
      setContent(null);
    }
  };

  useEffect(() => {
    loadContent();
  }, []);

  return (
    <div className="text-gray-800">
      <h2>File Viewer</h2>
      {content ? (
        <div>
          <pre>{JSON.stringify(JSON.parse(content), null, 2)}</pre>
          <div dangerouslySetInnerHTML={{ __html: content }} />
        </div>
      ) : (
        <p>No content saved.</p>
      )}
      <button onClick={loadContent}>Refresh</button>
    </div>
  );
};

const Editor = () => {
  const quillRef = useRef<Quill | null>(null);
  const [updateFlag, setUpdateFlag] = useState(false);
  const [readOnly, setReadOnly] = useState(false);
  const [initialData, setInitialData] = useState<Record<string, any> | null>(
    () => {
      const storedContent = localStorage.getItem("quill-editor-content");
      return storedContent ? JSON.parse(storedContent) : null;
    },
  );

  const handleSaveToLocalStorage = () => {
    if (quillRef.current) {
      const content = quillRef.current.getContents();
      localStorage.setItem("quill-editor-content", JSON.stringify(content));
      setUpdateFlag(!updateFlag); // Toggle updateFlag to trigger refresh in the viewer

      // Save to file
      // const blob = new Blob([JSON.stringify(content)], {
      //   type: "application/json",
      // });
      // const url = URL.createObjectURL(blob);
      // const a = document.createElement("a");
      // a.href = url;
      // a.download = "editor-content.json";
      // a.click();
      // URL.revokeObjectURL(url);
    }
  };

  const handleClearLocalStorage = () => {
    localStorage.removeItem("quill-editor-content");
    if (quillRef.current) {
      quillRef.current.setContents([]);
    }
    setUpdateFlag(!updateFlag); // Toggle updateFlag to trigger refresh in the viewer
  };

  const toggleReadOnly = () => {
    setReadOnly(!readOnly);
  };

  const Delta = Quill.import("delta");

  return (
    <div className="">
      <QuillEditor
        ref={quillRef}
        readOnly={readOnly}
        defaultValue={initialData}
        // defaultValue={new Delta()
        //       .insert("Hello")
        //       .insert("\n", { header: 1 })
        //       .insert("Some ")
        //       .insert("initial", { bold: true })
        //       .insert(" ")
        //       .insert("content", { underline: true })
        //       .insert("\n")}
      />
      {/* <div className="flex justify-center gap-4 mt-4"> */}
      {/*   <button className="p-2 bg-green-500" onClick={handleSaveToLocalStorage}> */}
      {/*     Save to LocalStorage */}
      {/*   </button> */}
      {/*   <button className="p-2 bg-green-500" onClick={handleClearLocalStorage}> */}
      {/*     Clear LocalStorage */}
      {/*   </button> */}
      {/*   <button className="p-2 bg-green-500" onClick={toggleReadOnly}> */}
      {/*     {readOnly ? "Switch to Edit Mode" : "Switch to Read-Only Mode"} */}
      {/*   </button> */}
      {/* </div> */}
      {/* <FileViewer key={updateFlag} />{" "} */}
      {/* The key prop ensures the component re-renders */}
    </div>
  );
};
