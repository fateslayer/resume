// Resume - Ajaz Ur Rehman
// Typst version (converted from LaTeX)

#set document(title: "Ajaz Ur Rehman - Resume", author: "Ajaz Ur Rehman")
#set page(
  paper: "us-letter",
  margin: (left: 0.5in, right: 0.5in, top: 0.5in, bottom: 0.5in),
)
#set text(font: "DejaVu Serif", size: 12pt, lang: "en")
#set par(justify: false)
#set list(indent: 0pt, body-indent: 0pt, spacing: 0.5em)

// Constants
#let name = "Ajaz Ur Rehman"
#let hometown = "Bhopal, India"
#let email = "ajazurrehman4@gmail.com"
#let phone = "+917470611970"

// Links
#let hometown-link = "https://google.com/maps/place/Bhopal"
#let linkedin-link = "https://linkedin.com/in/ajaz-rehman"
#let github-link = "https://github.com/ajaz-rehman"
#let portfolio-link = "https://ajaz-rehman.github.io"
#let adsum-link = "https://adsum-works.com"
#let skoot-link = "https://skoot.eco"
#let automate-my-app-link = "https://automatemyapp.com"
#let clearalist-link = "https://clearalist.com"
#let pabbly-link = "https://pabbly.com/email-marketing"
#let taxai-link = "https://chat.taxai.uk"
#let email-automation-link = "https://youtube.com/watch?v=kkopsVYOO7Y"
#let rgpv-link = "https://rgpv.ac.in"

// Custom functions
#let resume-section(title) = {
  block(above: 1em, below: 0.5em)[
    #set text(size: 12pt, weight: "bold")
    #title
    #line(length: 100%, stroke: 0.5pt)
    #v(5pt)
  ]
}

#let job-entry(company: none, company-link: none, location: none, title: none, dates: none, body: none, skills: none) = {
  block(above: 0.5em, below: 0.25em)[
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 1em,
      row-gutter: 2pt,
      align(left)[
        #link(company-link)[#text(weight: "bold", fill: rgb("#0000ee"))[#company]]
        #linebreak()
        #text(size: 10pt, style: "italic")[#title]
      ],
      align(right)[
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

// ========== HEADING ==========
#align(center)[
  #text(size: 24pt, weight: "bold")[#name]
  #v(8pt)
  #set text(size: 10pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    row-gutter: 2pt,
    align(left)[
      #link(portfolio-link)[#text(fill: rgb("#0000ee"))[ajaz-rehman.github.io]]
      #linebreak()
      #link(github-link)[#text(fill: rgb("#0000ee"))[github.com/ajaz-rehman]]
      #linebreak()
      #link(linkedin-link)[#text(fill: rgb("#0000ee"))[linkedin.com/in/ajaz-rehman]]
    ],
    align(right)[
      #link(hometown-link)[#text(fill: rgb("#0000ee"))[#hometown]]
      #linebreak()
      #link("tel:" + phone)[#text(fill: rgb("#0000ee"))[#phone]]
      #linebreak()
      #link("mailto:" + email)[#text(fill: rgb("#0000ee"))[#email]]
    ],
  )
]

#v(0.5em)

// ========== PROFESSIONAL SUMMARY ==========
#resume-section[Professional Summary]

#block(above: 2pt, below: 0pt)[
  #text(size: 11pt)[
    Full-Stack Developer with 5+ years of experience building SaaS products and complex front-end applications, specializing in JavaScript, TypeScript, React, Vue.js, Node.js, and AWS. I thrive in environments where I can take ownership of entire projects, from architecture to deployment. Passionate about writing clean, efficient, and maintainable code while consistently delivering ahead of deadlines. Eager to contribute to cross-functional teams that value continuous learning, teaching, and adopting new technologies.
  ]
]

// ========== WORK EXPERIENCE ==========
#resume-section[Work Experience]

#job-entry(
  company: "Adsum-Works",
  company-link: adsum-link,
  location: "London, UK",
  title: "Front-End Developer (Remote)",
  dates: "Jul 2022 - Sep 2023",
  body: [
    #list(
      [#text(weight: "bold")[Reengineered the front-end architecture] from legacy HTML/JavaScript to a modern React and Next.js stack, significantly improving code maintainability and scalability.],
      [#text(weight: "bold")[Developed a custom KYC flow] integrating Veriff's API, enhancing user verification and experience. Also delivered the #link(taxai-link)[#text(fill: rgb("#0000ee"))[TaxAI]] chatbot interface within a week, enabling AI-driven tax query interactions.],
      [#text(weight: "bold")[Built a comprehensive UI component library] with over 100 components based on Atomic Design Principles, collaborating closely with the UI/UX designer to ensure design consistency and efficiency.],
      [#text(weight: "bold")[Consistently recognized by the team and CEO] for delivering projects ahead of schedule and demonstrating exceptional work ethic in a fast-paced startup environment.],
    )
  ],
  skills: "TypeScript, React, Next.js, Python, Flask, REST, Storybook, Material UI"
)

#job-entry(
  company: "SkootEco",
  company-link: skoot-link,
  location: "London, UK",
  title: "Front-End Developer (Remote)",
  dates: "Dec 2021 - May 2022",
  body: [
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
  company: "AutomateMyApp",
  company-link: automate-my-app-link,
  location: hometown,
  title: "Founder, and Full-Stack Developer",
  dates: "Jan 2021 - Sep 2021",
  body: [
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
  company: "Clearalist",
  company-link: clearalist-link,
  location: hometown,
  title: "Founder, and Full-Stack Developer",
  dates: "Jan 2020 - Dec 2020",
  body: [
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
  company: "Pabbly",
  company-link: pabbly-link,
  location: hometown,
  title: "Web Developer",
  dates: "Jan 2019 - Dec 2019",
  body: [
    #list(
      [#text(weight: "bold")[Developed the new ]#link(email-automation-link)[#text(fill: rgb("#0000ee"))[Email Automation]]#text(weight: "bold")[ module], significantly enhancing platform capabilities and user experience, drawing inspiration from industry leaders like MailerLite.],
      [#text(weight: "bold")[Led the migration of users] from an old automation system to the new one, ensuring zero downtime during the MySQL data transformation process.],
      [#text(weight: "bold")[Introduced Composer for PHP dependency management], replacing outdated manual installations, which streamlined updates and maintained a consistent codebase.],
      [#text(weight: "bold")[Optimized API calls and MySQL queries], thus reducing API call time from 12 seconds to 1 second and cutting server load by 50%.],
    )
  ],
  skills: "PHP, CodeIgniter, JavaScript, REST, MySQL, HTML, CSS, Bootstrap"
)

// ========== EDUCATION ==========
#resume-section[Education]

#block(above: 2pt, below: 0pt)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    row-gutter: 2pt,
    align(left)[
      #link(rgpv-link)[#text(weight: "bold", fill: rgb("#0000ee"))[Rajiv Gandhi Proudyogiki Vishwavidyalaya]]
      #linebreak()
      #text(size: 10pt, style: "italic")[B.E. - Computer Science & Engineering]
    ],
    align(right)[
      #text(size: 10pt)[#hometown]
      #linebreak()
      #text(size: 10pt, style: "italic")[Jul 2013 - Jun 2017]
    ],
  )
]

// ========== SKILLS ==========
#resume-section[Skills]

#block(above: 2pt, below: 0pt)[
  #set text(size: 10pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 2em,
    row-gutter: 4pt,
    [#text(weight: "bold")[Languages: ]#text(weight: "regular")[JavaScript, TypeScript, PHP]],
    [#text(weight: "bold")[Front-End: ]#text(weight: "regular")[React, Vue.js, Vite, Next.js, Nuxt.js]],
    [#text(weight: "bold")[Back-End: ]#text(weight: "regular")[Node.js, Express.js, Nest.js, Serverless, Flask]],
    [#text(weight: "bold")[Testing: ]#text(weight: "regular")[Jest, Mocha, Chai, Supertest]],
    [#text(weight: "bold")[Databases: ]#text(weight: "regular")[MySQL, PostgreSQL, MongoDB]],
    [#text(weight: "bold")[Design Systems: ]#text(weight: "regular")[Material UI, Tailwind CSS, Bootstrap]],
    [#text(weight: "bold")[Tools: ]#text(weight: "regular")[Git, NPM, Docker, Linux, Storybook, Nginx, Webpack, Babel]],
    [#text(weight: "bold")[Others: ]#text(weight: "regular")[REST, GraphQL, OAuth, JWT, E2E Testing, CI/CD, Agile, Scrum]],
    [#text(weight: "bold")[Cloud: ]#text(weight: "regular")[AWS (EC2, S3, SQS, SES, Lambda, API Gateway, CloudFront, CodeDeploy, ACM, Cognito, CloudWatch)]]
  )
]
