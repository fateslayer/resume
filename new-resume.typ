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
- Played God with tiny molecules, making them dance to uncover the secrets of the universe
- Convinced high-performance computers to work overtime without unions, reducing simulation time by 50%
- Wowed a room full of nerds with pretty pictures of invisible things and imaginary findings

#work(
  title: "Frontend Developer",
  location: "London, UK",
  company: "SkootEco",
  dates: dates("Dec 2021", "Jun 2022"),
)
- Scaled user base from 10 to 2000+, accidentally becoming a small wealthy nation in the process
- Crafted Bash scripts so clever they occasionally made other engineers weep with joy
- Automated support responses, reducing human interaction to a level that would make introverts proud
- Built a documentation site that actually got read, breaking the ancient RTFM curse

#work(
  title: "Fullstack Developer",
  location: "Bhopal, India",
  company: "AutomateMyApp",
  dates: dates("Jan 2021", "Sep 2021"),
)
- Developed a cross-platform mobile app that turned every user into a potential paparazzi
- Led a security overhaul, heroically saving the company from the menace of "password123"

#work(
  title: "Fullstack Developer",
  location: "Bhopal, India",
  company: "Clearalist",
  dates: dates("Jan 2020", "Dec 2020"),
)
- Developed a cross-platform mobile app that turned every user into a potential paparazzi
- Led a security overhaul, heroically saving the company from the menace of "password123"

#work(
  title: "Web Developer",
  location: "Bhopal, India",
  company: "Pabbly",
  dates: dates("Jan 2019", "Dec 2019"),
)
- Developed a cross-platform mobile app that turned every user into a potential paparazzi
- Led a security overhaul, heroically saving the company from the menace of "password123"

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
