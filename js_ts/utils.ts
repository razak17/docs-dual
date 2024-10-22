// replace spaces, dashes, and camelCase with underscores
function toSnakeCase(str: string): string {
  return str
    .replace(/ /g, "_")
    .replace(/-/g, "_")
    .replace(/([a-z])([A-Z])/g, "$1_$2")
    .toLowerCase();
}

console.log(toSnakeCase("Project Title"));
console.log(toSnakeCase("Background"));
console.log(toSnakeCase("Long-term Objectives"));
console.log(toSnakeCase("Specific Aims"));
console.log(toSnakeCase("Collaborators"));
console.log(toSnakeCase("Sub-contractors"));
console.log(toSnakeCase("Estimated Budget and Timeline"));
