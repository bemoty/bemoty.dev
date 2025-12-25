#import "template.typ": resume, header, resume_heading, edu_item, exp_item, project_item, skill_item

#let lang = sys.inputs.at("lang", default: "en")
#let db = toml("lang.toml")
#let t(..keys) = {
  let k = keys.pos()
  let current = db
  for key in k {
    current = current.at(key, default: [:])
  }
  current.at(lang, default: k.last())
}
#set text(lang: lang)

#show: resume

#header(
  name: "Joshua Winkler",
  email: "josh@bemoty.dev",
  website: "bemoty.dev",
  linkedin: "linkedin.com/in/joshua-winkler",
  github: "github.com/bemoty",
)

#resume_heading[#t("experience", "title")]
#exp_item(
  role: t("experience", "indielemon", "role"),
  name: t("experience", "indielemon", "name"),
  location: t("experience", "indielemon", "location"),
  date: t("experience", "indielemon", "time"),
  [#t("experience", "indielemon", "entry-1")],
  [#t("experience", "indielemon", "entry-2")],
  [#t("experience", "indielemon", "entry-3")],
  [#t("experience", "indielemon", "entry-4")]
)

#resume_heading(t("projects", "title"))
#project_item(
  name: t("projects", "dairy", "name"),
  skills: "Java, Next.js, gRPC, Docker",
  date: t("projects", "dairy", "time"),
  [#t("projects", "dairy", "entry-1")],
  [#t("projects", "dairy", "entry-2")],
  [#t("projects", "dairy", "entry-3")],
)
#project_item(
  name: t("projects", "mojang", "name"),
  skills: "Java, JavaScript",
  date: t("projects", "mojang", "time"),
  [#t("projects", "mojang", "entry-1")],
  [#t("projects", "mojang", "entry-2")],
  [#t("projects", "mojang", "entry-3")],
)

#resume_heading[#t("education", "title")]
#edu_item(
  name: t("education", "uibk", "name"),
  degree: t("education", "uibk", "degree"),
  location: t("education", "uibk", "location"),
  date: t("education", "uibk", "time")
)
#edu_item(
  name: t("education", "htlibk", "name"),
  degree: t("education", "htlibk", "degree"),
  location: t("education", "htlibk", "location"),
  date: t("education", "htlibk", "time")
)

#resume_heading(t("skills", "name"))
#skill_item(
  category: t("skills", "languages"),
  skills: "Java, TypeScript, SQL, HTML/CSS, Go, GraphQL, Python"
)
#skill_item(
  category: t("skills", "frameworks"),
  skills: "React, Next.js, Vue/Nuxt, Node.js"
)
#skill_item(
  category: t("skills", "infra"),
  skills: "Git, Docker, Kubernetes, GitLab CI, gRPC, Linux, JIRA"
)
#skill_item(
  category: t("skills", "libraries"),
  skills: "Netty, Apollo Federation, Tailwind CSS"
)
