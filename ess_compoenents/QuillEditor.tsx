import React, { forwardRef, useEffect, useLayoutEffect, useRef } from "react";
import Quill from "quill";
import "quill/dist/quill.snow.css";

type QuillEditorProps = {
  readOnly?: boolean;
  defaultValue?: Record<string, any>;
  onTextChange?: (...args: any[]) => void;
  onSelectionChange?: (...args: any[]) => void;
};

const toolbarOptions = [
  ["bold", "italic", "underline", "strike"], // toggled buttons
  ["blockquote", "code-block"],
  ["link", "image", "video", "formula"],

  [{ header: 1 }, { header: 2 }], // custom button values
  [{ list: "ordered" }, { list: "bullet" }, { list: "check" }],
  [{ script: "sub" }, { script: "super" }], // superscript/subscript
  [{ indent: "-1" }, { indent: "+1" }], // outdent/indent
  [{ direction: "rtl" }], // text direction

  [{ size: ["small", false, "large", "huge"] }], // custom dropdown
  [{ header: [1, 2, 3, 4, 5, 6, false] }],

  [{ color: [] }, { background: [] }], // dropdown with defaults from theme
  [{ font: [] }],
  [{ align: [] }],

  ["clean"], // remove formatting button
];

const QuillEditor = forwardRef<Quill | null, QuillEditorProps>(
  ({ readOnly = false, defaultValue, onTextChange, onSelectionChange }, ref) => {
    const containerRef = useRef<HTMLDivElement>(null);
    const onTextChangeRef = useRef(onTextChange);
    const onSelectionChangeRef = useRef(onSelectionChange);

    useLayoutEffect(() => {
      onTextChangeRef.current = onTextChange;
      onSelectionChangeRef.current = onSelectionChange;
    }, [onTextChange, onSelectionChange]);

    useEffect(() => {
      if (ref && "current" in ref) {
        ref.current?.enable(!readOnly);
      }
    }, [ref, readOnly]);

    useEffect(() => {
      const container = containerRef.current;
      if (container) {
        const editorContainer = container.appendChild(
          container.ownerDocument.createElement("article"),
        );
        editorContainer.style.height = "10rem";
        editorContainer.style.backgroundColor = "white";

        const quillConfig = {
          theme: "snow",
          readOnly: readOnly,
          modules: {
            toolbar: readOnly ? false : toolbarOptions,
          },
        };

        const quill = new Quill(editorContainer, quillConfig);

        if (ref && "current" in ref) {
          ref.current = quill;
        }

        if (defaultValue) {
          quill.setContents(defaultValue);
        }

        quill.on(Quill.events.TEXT_CHANGE, (...args) => {
          onTextChangeRef.current?.(...args);
        });

        quill.on(Quill.events.SELECTION_CHANGE, (...args) => {
          onSelectionChangeRef.current?.(...args);
        });

        return () => {
          if (ref && "current" in ref) {
            ref.current = null;
          }
          container.innerHTML = "";
        };
      }
    }, [ref, readOnly, defaultValue]);

    return <section className=" text-gray-800" ref={containerRef}></section>;
  },
);

QuillEditor.displayName = "Editor";

export default QuillEditor;
