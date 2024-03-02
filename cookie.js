const c = "CONSENT=PENDING+742; SOCS=CAESNQgDEitib3FfaWRlbnRpdHlmcm9udGVuZHVpc2VydmVyXzIwMjMwOTEyLjA4X3AwGgJlbiACGgYIgOCTqAY; SOCS=CAISNQgDEitib3FfaWRlbnRpdHlmcm9udGVuZHVpc2VydmVyXzIwMjMwODI5LjA3X3AxGgJlbiADGgYIgJnPpwY; PREF=f6=400&tz=UTC"

const pref = c.split(";").find((item) => item.includes("PREF"));
const value = pref.split("=").splice(1).join("=");
const prefValue = value.split(" ")[0];
// f6=400&tz=UTC

if (!prefValue.match(/f6=\d+/)) {
  console.log("No f6 found");
  return;
}
  console.log("f6 found");
