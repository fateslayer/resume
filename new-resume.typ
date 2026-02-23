#import "templates/resume-with-labels.typ": *

// === Configuration ===
#let config = (
  name: "Ajaz Ur Rehman",
  email: "ajazurrehman4@gmail.com",
  github: "github.com/fateslayer",
  linkedin: "linkedin.com/in/ajaz-rehman",
  phone: "+91 7000845091",
  personal-site: "fateslayer.github.io",
  personal-site-label: "Website",
)

#let dates(start, end) = dates-helper(start-date: start, end-date: end)

// === Resume Setup ===
#show: resume.with(
  author: config.name,
  email: config.email,
  github: config.github,
  linkedin: config.linkedin,
  phone: config.phone,
  email-label: "Email",
  github-label: "GitHub",
  linkedin-label: "LinkedIn",
  personal-site: config.personal-site,
  personal-site-label: config.personal-site-label,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

// === Skills ===
== Skills
- *Programming Languages*: JavaScript, TypeScript, Python
- *Frontend*: React, NextJS, Tailwind CSS, Material UI, Storybook
- *Backend*: NodeJS, ExpressJS, NestJS, Flask, Airflow
- *Databases*: MySQL, PostgreSQL, MongoDB
- *Cloud*: AWS (EC2, S3, SQS, SES, Lambda, CloudFront, CodeDeploy, CloudWatch)
- *AI Tools*: Claude, Codex, Cursor
- *Others*: Git, Linux, Docker, Nginx, Turborepo

// === Work Experience ===
== Work Experience

#work(
  title: "Software Engineer",
  location: "London, UK",
  company: "Adsum Works",
  dates: dates("Jul 2022", "Present"),
)
- Reengineered the front-end architecture from legacy HTML/JavaScript to a modern React and Next.js stack, significantly improving code maintainability and scalability
- Developed a custom KYC flow integrating Veriff's API, enhancing user verification and experience. Also delivered the TaxAI chatbot interface within a week, enabling AI-driven tax query interactions
- Built a comprehensive UI component library with over 100 components based on Atomic Design Principles, collaborating closely with the UI/UX designer to ensure design consistency and efficiency
- Consistently recognized by the team and CEO for delivering projects ahead of schedule and demonstrating exceptional work ethic in a fast-paced startup environment

#work(
  title: "Frontend Developer",
  location: "London, UK",
  company: "SkootEco",
  dates: dates("Dec 2021", "Jun 2022"),
)
- Developed a centralized UI component library using Vue.js and Nuxt.js, creating over 50 reusable components that streamlined development across multiple projects and ensured consistent design
- Implemented Storybook to facilitate seamless collaboration between developers and designers, enhancing component development workflow and reducing design discrepancies
- Built and optimized micro-frontend web pages, including critical user flows like login, signup, dashboard, and onboarding, ensuring high performance, responsiveness, and accessibility across devices
- Collaborated closely with cross-functional teams, including product managers and lead developers, to deliver features ahead of schedule while maintaining high code quality and adhering to best practices

#work(
  title: "Fullstack Developer",
  location: "Bhopal, India",
  company: "AutomateMyApp",
  dates: dates("Jan 2021", "Sep 2021"),
)
- Designed and launched a Workflow Automation service similar to Zapier, enabling users to connect apps like Google Sheets, Calendly, and Discord through a custom no-code workflow builder
- Developed the full-stack application using Vue.js, Node.js, and Nest.js, focusing on scalability and security, deploying the service on AWS, and managing data with PostgreSQL
- Implemented JWT and OAuth-based authentication, allowing users to access the service securely using their email or social accounts
- Integrated a subscription-based payment model with PayPal, facilitating user monetization and ensuring a smooth transaction experience

#work(
  title: "Fullstack Developer",
  location: "Bhopal, India",
  company: "Clearalist",
  dates: dates("Jan 2020", "Dec 2020"),
)
- Created and launched an Email List Cleaning and Verification service, enabling users to upload and verify email lists, serving thousands of users and verifying over 5 million emails
- Developed the platform's front-end and back-end using Vue.js, Node.js, and Express.js, with MongoDB for data management and AWS for cloud deployment, ensuring a reliable and scalable service
- Automated end-to-end testing for all API routes, significantly reducing the risk of bugs and accelerating development with confidence
- Leveraged AWS SQS to handle multiple list cleaning jobs, processing one CSV file serially to ensure accuracy and efficiency, even under high load

#work(
  title: "Web Developer",
  location: "Bhopal, India",
  company: "Pabbly",
  dates: dates("Jan 2019", "Dec 2019"),
)
- Developed the #link("https://youtube.com/watch?v=kkopsVYOO7Y")[Email Automation] system end-to-end
- Transformed the MySQL data of 1500 users of the old automation system with no downtime
- Introduced Composer for PHP dependency management, replacing outdated manual installations, which streamlined updates and maintained a consistent codebase
- Optimized API calls and MySQL queries, thus reducing API call time from 12 seconds to 1 second and cutting server load by 50%

// === Projects ===
// == Projects
//
// #project(
//   name: "Hyperschedule",
//   role: "Maintainer",
//   dates: dates("Nov 2023", "Present"),
//   url: "hyperschedule.io",
// )
// - Maintain open-source scheduler used by 7000+ users at the Claremont Consortium with TypeScript, React and MongoDB
//   - Manage PR reviews, bug fixes, and coordinate with college for releasing scheduling data and over \$1500 of yearly funding
// - Ensure 99.99% uptime during peak loads of 1M daily requests during course registration through redundant servers
//
// === Extracurricular Activities ===
// == Extracurricular Activities
//
// #extracurriculars(
//   activity: "Capture The Flag Competitions",
//   dates: dates("Jan 2021", "Present"),
// )
// - Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
// - Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
//   - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
// - Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally
//
// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

// === Education ===
== Education

#edu(
  institution: "IES College of Technology",
  location: "Bhopal, India",
  dates: dates("Aug 2013", "May 2017"),
  degree: "Bachelor of Computer Science and Engineering",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  consistent: true
)
// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci
