// Resume - Ajaz Ur Rehman

// === Configuration ===
#let config = (
  name: "Ajaz Ur Rehman",
  hometown: "Bhopal, India",
  email: "ajazurrehman4@gmail.com",
  phone: "+917470611970",
  links: (
    portfolio: "https://ajaz-rehman.github.io",
    github: "https://github.com/ajaz-rehman",
    linkedin: "https://linkedin.com/in/ajaz-rehman",
    hometown: "https://google.com/maps/place/Bhopal",
    adsum: "https://adsum-works.com",
    skoot: "https://skoot.eco",
    automate_my_app: "https://automatemyapp.com",
    clearalist: "https://clearalist.com",
    pabbly: "https://pabbly.com/email-marketing",
    taxai: "https://chat.taxai.uk",
    email_automation: "https://youtube.com/watch?v=kkopsVYOO7Y",
    rgpv: "https://rgpv.ac.in",
  ),
)

// === Document Setup ===
#set document(title: config.name + " - Resume", author: config.name)
#set page(
  paper: "us-letter",
  margin: (left: 0.5in, right: 0.5in, top: 0.5in, bottom: 0.5in),
)
#set text(font: "DejaVu Serif", size: 12pt, lang: "en")
#set par(justify: false)
#set list(indent: 0pt, body-indent: 0pt, spacing: 0.5em)

// === Helpers ===
#let link-color = rgb("#0000ee")

#let resume-link(url, label) = link(url)[#text(fill: link-color)[#label]]

#let resume-section(title) = {
  block(above: 1em, below: 0.5em)[
    #set text(size: 12pt, weight: "bold")
    #title
    #line(length: 100%, stroke: 0.5pt)
    #v(5pt)
  ]
}

#let two-col(left-content, right-content) = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    row-gutter: 2pt,
    align(left)[#left-content],
    align(right)[#right-content],
  )
}

#let job-entry(company, company-link, location, title, dates, body, skills: none) = {
  block(above: 0.5em, below: 0.25em)[
    #two-col(
      [
        #resume-link(company-link, company)
        #linebreak()
        #text(size: 10pt, style: "italic")[#title]
      ],
      [
        #text(size: 10pt)[#location]
        #linebreak()
        #text(size: 10pt, style: "italic")[#dates]
      ],
    )
    #v(2pt)
    #body
    #if skills != none [
      #v(5pt)
      #text(size: 9pt, style: "italic")[Skills: #skills]
    ]
  ]
}

#let education-entry(institution, institution-link, degree, location, dates) = {
  two-col(
    [
      #resume-link(institution-link, institution)
      #linebreak()
      #text(size: 10pt, style: "italic")[#degree]
    ],
    [
      #text(size: 10pt)[#location]
      #linebreak()
      #text(size: 10pt, style: "italic")[#dates]
    ],
  )
}

#let skill(label, items) = [#text(weight: "bold")[#label: ]#text(weight: "regular")[#items]]

// === Header ===
#align(center)[
  #text(size: 24pt, weight: "bold")[#config.name]
  #v(8pt)
  #set text(size: 10pt)
  #two-col(
    [
      #resume-link(config.links.portfolio, "ajaz-rehman.github.io")
      #linebreak()
      #resume-link(config.links.github, "github.com/ajaz-rehman")
      #linebreak()
      #resume-link(config.links.linkedin, "linkedin.com/in/ajaz-rehman")
    ],
    [
      #resume-link(config.links.hometown, config.hometown)
      #linebreak()
      #link("tel:" + config.phone)[#text(fill: link-color)[#config.phone]]
      #linebreak()
      #link("mailto:" + config.email)[#text(fill: link-color)[#config.email]]
    ],
  )
]

#v(0.5em)

// === Professional Summary ===
#resume-section[Professional Summary]

#block(above: 2pt, below: 0pt)[
  #text(size: 11pt)[
    Full-Stack Developer with 5+ years of experience building SaaS products and complex front-end applications, specializing in JavaScript, TypeScript, React, Vue.js, Node.js, and AWS. I thrive in environments where I can take ownership of entire projects, from architecture to deployment. Passionate about writing clean, efficient, and maintainable code while consistently delivering ahead of deadlines. Eager to contribute to cross-functional teams that value continuous learning, teaching, and adopting new technologies.
  ]
]

// === Work Experience ===
#resume-section[Work Experience]

#job-entry(
  "Adsum-Works",
  config.links.adsum,
  "London, UK",
  "Front-End Developer (Remote)",
  "Jul 2022 - Sep 2023",
  [
    #list(
      [#text(weight: "bold")[Reengineered the front-end architecture] from legacy HTML/JavaScript to a modern React and Next.js stack, significantly improving code maintainability and scalability.],
      [#text(weight: "bold")[Developed a custom KYC flow] integrating Veriff's API, enhancing user verification and experience. Also delivered the #resume-link(config.links.taxai, "TaxAI") chatbot interface within a week, enabling AI-driven tax query interactions.],
      [#text(weight: "bold")[Built a comprehensive UI component library] with over 100 components based on Atomic Design Principles, collaborating closely with the UI/UX designer to ensure design consistency and efficiency.],
      [#text(weight: "bold")[Consistently recognized by the team and CEO] for delivering projects ahead of schedule and demonstrating exceptional work ethic in a fast-paced startup environment.],
    )
  ],
  skills: "TypeScript, React, Next.js, Python, Flask, REST, Storybook, Material UI"
)

#job-entry(
  "SkootEco",
  config.links.skoot,
  "London, UK",
  "Front-End Developer (Remote)",
  "Dec 2021 - May 2022",
  [
    #list(
      [#text(weight: "bold")[Developed a centralized UI component library] using Vue.js and Nuxt.js, creating over 50 reusable components that streamlined development across multiple projects and ensured consistent design.],
      [#text(weight: "bold")[Implemented Storybook] to facilitate seamless collaboration between developers and designers, enhancing component development workflow and reducing design discrepancies.],
      [#text(weight: "bold")[Built and optimized micro-frontend web pages], including critical user flows like login, signup, dashboard, and onboarding, ensuring high performance, responsiveness, and accessibility across devices.],
      [#text(weight: "bold")[Collaborated closely with cross-functional teams], including product managers and lead developers, to deliver features ahead of schedule while maintaining high code quality and adhering to best practices.],
    )
  ],
  skills: "TypeScript, Vue.js, Nuxt.js, GraphQL, Storybook, Tailwind CSS, CircleCI"
)

#job-entry(
  "AutomateMyApp",
  config.links.automate_my_app,
  config.hometown,
  "Founder, and Full-Stack Developer",
  "Jan 2021 - Sep 2021",
  [
    #list(
      [#text(weight: "bold")[Designed and launched a Workflow Automation service] similar to Zapier, enabling users to connect apps like Google Sheets, Calendly, and Discord through a custom no-code workflow builder.],
      [#text(weight: "bold")[Developed the full-stack application] using Vue.js, Node.js, and Nest.js, focusing on scalability and security, deploying the service on AWS, and managing data with PostgreSQL.],
      [#text(weight: "bold")[Implemented JWT and OAuth-based authentication], allowing users to access the service securely using their email or social accounts.],
      [#text(weight: "bold")[Integrated a subscription-based payment model] with PayPal, facilitating user monetization and ensuring a smooth transaction experience.],
    )
  ],
  skills: "TypeScript, Vue.js, Vite, Node.js, Nest.js, REST, PostgreSQL, AWS, Bootstrap"
)

#job-entry(
  "Clearalist",
  config.links.clearalist,
  config.hometown,
  "Founder, and Full-Stack Developer",
  "Jan 2020 - Dec 2020",
  [
    #list(
      [#text(weight: "bold")[Created and launched an Email List Cleaning and Verification service], enabling users to upload and verify email lists, serving thousands of users and verifying over 5 million emails.],
      [#text(weight: "bold")[Developed the platform's front-end and back-end] using Vue.js, Node.js, and Express.js, with MongoDB for data management and AWS for cloud deployment, ensuring a reliable and scalable service.],
      [#text(weight: "bold")[Automated end-to-end testing for all API routes], significantly reducing the risk of bugs and accelerating development with confidence.],
      [#text(weight: "bold")[Leveraged AWS SQS to handle multiple list cleaning jobs], processing one CSV file serially to ensure accuracy and efficiency, even under high load.],
    )
  ],
  skills: "JavaScript, Express.js, Vue.js, Node.js, REST, MongoDB, AWS, Bootstrap"
)

#job-entry(
  "Pabbly",
  config.links.pabbly,
  config.hometown,
  "Web Developer",
  "Jan 2019 - Dec 2019",
  [
    #list(
      [#text(weight: "bold")[Developed the new ]#resume-link(config.links.email_automation, "Email Automation")#text(weight: "bold")[ module], significantly enhancing platform capabilities and user experience, drawing inspiration from industry leaders like MailerLite.],
      [#text(weight: "bold")[Led the migration of users] from an old automation system to the new one, ensuring zero downtime during the MySQL data transformation process.],
      [#text(weight: "bold")[Introduced Composer for PHP dependency management], replacing outdated manual installations, which streamlined updates and maintained a consistent codebase.],
      [#text(weight: "bold")[Optimized API calls and MySQL queries], thus reducing API call time from 12 seconds to 1 second and cutting server load by 50%.],
    )
  ],
  skills: "PHP, CodeIgniter, JavaScript, REST, MySQL, HTML, CSS, Bootstrap"
)

// === Education ===
#resume-section[Education]

#block(above: 2pt, below: 0pt)[
  #education-entry(
    "Rajiv Gandhi Proudyogiki Vishwavidyalaya",
    config.links.rgpv,
    "B.E. - Computer Science & Engineering",
    config.hometown,
    "Jul 2013 - Jun 2017"
  )
]

// === Skills ===
#resume-section[Skills]

#block(above: 2pt, below: 0pt)[
  #set text(size: 10pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 2em,
    row-gutter: 4pt,
    skill("Languages", "JavaScript, TypeScript, PHP"),
    skill("Front-End", "React, Vue.js, Vite, Next.js, Nuxt.js"),
    skill("Back-End", "Node.js, Express.js, Nest.js, Serverless, Flask"),
    skill("Testing", "Jest, Mocha, Chai, Supertest"),
    skill("Databases", "MySQL, PostgreSQL, MongoDB"),
    skill("Design Systems", "Material UI, Tailwind CSS, Bootstrap"),
    skill("Tools", "Git, NPM, Docker, Linux, Storybook, Nginx, Webpack, Babel"),
    skill("Others", "REST, GraphQL, OAuth, JWT, E2E Testing, CI/CD, Agile, Scrum"),
    skill("Cloud", "AWS (EC2, S3, SQS, SES, Lambda, API Gateway, CloudFront, CodeDeploy, ACM, Cognito, CloudWatch)"),
  )
]
