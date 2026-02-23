// Extended basic-resume with custom link labels
// Import components from basic-resume
#import "@preview/basic-resume:0.2.9": generic-two-by-two, generic-one-by-two, dates-helper, edu, work, project, certificates, extracurriculars

#import "@preview/scienceicons:0.1.0": orcid-icon

#let resume(
  author: "",
  author-position: left,
  personal-info-position: left,
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  orcid: "",
  // Custom labels - when set, use these instead of the URL/value for display
  email-label: none,
  phone-label: none,
  github-label: none,
  linkedin-label: none,
  personal-site-label: none,
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  author-font-size: 20pt,
  font-size: 10pt,
  lang: "en",
  body,
) = {
  // Contact item with optional custom label
  let contact-item(value, prefix: "", link-type: "", label: none) = {
    if value != "" {
      if link-type != "" {
        let display = if label != none { label } else { value }
        link(link-type + value)[#display]
      } else {
        value
      }
    }
  }

  set document(author: author, title: author)
  set text(font: font, size: font-size, lang: lang, ligatures: false)
  set page(margin: (0.5in), paper: paper)

  show link: underline
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]
  show heading: set text(fill: rgb(accent-color))
  show link: set text(fill: rgb(accent-color))
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(weight: 700, size: author-font-size)
    #pad(it.body)
  ]

  [= #(author)]

  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(pronouns),
          contact-item(phone, link-type: "tel:", label: phone-label),
          contact-item(location),
          contact-item(email, link-type: "mailto:", label: email-label),
          contact-item(github, link-type: "https://", label: github-label),
          contact-item(linkedin, link-type: "https://", label: linkedin-label),
          contact-item(personal-site, link-type: "https://", label: personal-site-label),
          contact-item(orcid, prefix: [#orcid-icon(color: rgb("#AECD54"))orcid.org/], link-type: "https://orcid.org/"),
        )
        items.filter(x => x != none).join(" | ")
      }
    ],
  )

  set par(justify: true)
  body
}
