import typescriptParser from "@typescript-eslint/parser";
import globals from "globals";
import eslint from "@eslint/js";
import tseslint from "typescript-eslint";

const eslintConfig = [
  ...tseslint.configs.recommended,
  {
    files: ["**/*.{js,jsx,mjs,cjs,ts,tsx}"],
    languageOptions: {
      ecmaVersion: "latest",
      sourceType: "module",
      globals: {
        ...globals.browser,
      },
      parser: typescriptParser,
    },
    rules: {
      ...eslint.configs.recommended.rules,
      "no-console": "off",
      "linebreak-style": "off",
      "no-shadow": "off",
      "max-len": ["error", { code: 120 }],
      semi: "warn",
      "object-curly-spacing": ["warn", "always"],
      "object-curly-newline": "off",
      "no-unused-vars": "warn",
      "@typescript-eslint/no-unused-vars": "off",
      "@typescript-eslint/explicit-function-return-type": "off",
      "@typescript-eslint/explicit-module-boundary-types": "off",
      "@typescript-eslint/no-explicit-any": "off",
      "@typescript-eslint/no-namespace": ["error", { allowDeclarations: true }],
    },
  },
];

export default eslintConfig;
